//------------------------------------------------------------
// Character.js — Handles character movement + sprite animation
//------------------------------------------------------------

class Character {
    constructor(x, y, scale = 0.13) {

        // World boundaries matching your canvas (1000×600)
        this.world = { xMin: 0, yMin: 0, xMax: 1000, yMax: 600 };

        // Logical (collision) position
        this.x = x;
        this.y = y;

        // Display position (uses lerp for smooth visual movement)
        this.displayX = x;
        this.displayY = y;

        this.scale = scale;
        this.speed = 0.8; // base movement speed

        this.currentAnimation = "idle"; // default animation
        this.animations = {};          // will contain animation frames

        this.frameIndex = 0; // animation frame counter

        this.loadAnimations();
    }

    //------------------------------------------------------------
    // Load all animation frames for all poses
    //------------------------------------------------------------
    loadAnimations() {
        // NOTE: scaleImage isn't used, but good placeholder if needed later
        const scaleImage = (img) => img;

        // Idle animation
        this.animations.idle = [
            loadImage("assets/images/idle1.png", scaleImage)
        ];

        // LEFT walk animation (3 frames)
        this.animations.walk_left = [
            loadImage("assets/images/walk_left1.png", scaleImage),
            loadImage("assets/images/walk_left2.png", scaleImage),
            loadImage("assets/images/walk_left3.png", scaleImage)
        ];

        // RIGHT walk animation
        this.animations.walk_right = [
            loadImage("assets/images/walk_right1.png", scaleImage),
            loadImage("assets/images/walk_right2.png", scaleImage),
            loadImage("assets/images/walk_right3.png", scaleImage)
        ];

        // FRONT walk animation
        this.animations.walk_front = [
            loadImage("assets/images/walk_front1.png", scaleImage),
            loadImage("assets/images/walk_front2.png", scaleImage),
            loadImage("assets/images/walk_front3.png", scaleImage)
        ];

        // BACK walk animation
        this.animations.walk_back = [
            loadImage("assets/images/walk_back1.png", scaleImage),
            loadImage("assets/images/walk_back2.png", scaleImage),
            loadImage("assets/images/walk_back3.png", scaleImage)
        ];

        // Special poses
        this.animations.jump = [loadImage("assets/images/jump.png", scaleImage)];
        this.animations.crouch = [loadImage("assets/images/crouch.png", scaleImage)];
        this.animations.climb = [loadImage("assets/images/climb.png", scaleImage)];
    }

    //------------------------------------------------------------
    // Switches animation set when new pose arrives from OSC
    //------------------------------------------------------------
    changePose(label) {
        if (this.animations[label]) {
            this.currentAnimation = label;
            this.frameIndex = 0; // restart animation
        }
    }

    //------------------------------------------------------------
    // Moves character based on recognized pose label
    //------------------------------------------------------------
    moveFromPose(label) {
        switch (label) {
            case "walk_left": this.x -= this.speed; break;
            case "walk_right": this.x += this.speed; break;
            case "walk_front": this.y += this.speed; break;
            case "walk_back": this.y -= this.speed; break;
        }

        //------------------------------------------------------------
        // WORLD BOUNDARY CLAMPING
        // Ensures the character / hitbox never leaves the canvas
        //------------------------------------------------------------
        const box = this.getCollisionBox();

        if (box.x < this.world.xMin)
            this.x += this.world.xMin - box.x;

        if (box.x + box.width > this.world.xMax)
            this.x -= (box.x + box.width - this.world.xMax);

        if (box.y < this.world.yMin)
            this.y += this.world.yMin - box.y;

        if (box.y + box.height > this.world.yMax)
            this.y -= (box.y + box.height - this.world.yMax);
    }

    //------------------------------------------------------------
    // Collision box — FOOT-ONLY collision rectangle (platformer)
    //
    // This keeps your interaction grounded, not body-wide.
    // The hitbox follows your sprites’ bottom area.
    //------------------------------------------------------------
    getCollisionBox() {
        const s = this.scale;

        // Which frame is currently displayed
        const img = this.animations[this.currentAnimation][Math.floor(this.frameIndex)];

        return {
            x: this.x + img.width * 0.35 * s,   // horizontal offset from sprite
            y: this.y + img.height * 0.9 * s,   // near the bottom (feet)
            width: img.width * 0.3 * s,         // narrow hitbox
            height: img.height * 0.1 * s        // short (only the feet)
        };
    }

    //------------------------------------------------------------
    // Update animation frame and movement every draw() loop
    //------------------------------------------------------------
    update(label) {

        // Movement only when pose is walking
        if (["walk_left", "walk_right", "walk_front", "walk_back"].includes(label)) {
            this.moveFromPose(label);
        }

        //------------------------------------------------------------
        // ANIMATION SPEED CONTROL
        // Walking → faster animation
        // Idle     → slow subtle movement
        //------------------------------------------------------------
        const frames = this.animations[this.currentAnimation];
        let animationSpeed;

        if (["walk_left", "walk_right", "walk_front", "walk_back"].includes(this.currentAnimation)) {
            animationSpeed = 0.12 * (this.speed / 0.8);
        } else {
            animationSpeed = 0.05;
        }

        // Advance frame index
        this.frameIndex += animationSpeed;
        if (this.frameIndex >= frames.length) this.frameIndex = 0;

        //------------------------------------------------------------
        // Smooth display movement using lerp
        // Prevents jitter from OSC pose detection
        //------------------------------------------------------------
        this.displayX = lerp(this.displayX, this.x, 0.3);
        this.displayY = lerp(this.displayY, this.y, 0.3);
    }

    //------------------------------------------------------------
    // Draw the character + optional collision box
    //------------------------------------------------------------
    display(showCollision = false) {
        const frames = this.animations[this.currentAnimation];
        const currentFrame = frames[Math.floor(this.frameIndex)];

        // Draw the sprite
        image(
            currentFrame,
            this.displayX,
            this.displayY,
            currentFrame.width * this.scale,
            currentFrame.height * this.scale
        );

        // Draw hitbox if debug mode ON
        if (showCollision) {
            const box = this.getCollisionBox();
            noFill();
            stroke(0, 255, 0);
            rect(box.x, box.y, box.width, box.height);
        }
    }
}
