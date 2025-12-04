
//------------------------------------------------------------
// Character.js — Handles movement, animation, jump & climb
//------------------------------------------------------------

class Character {
    constructor(x, y, scale = 0.13) {
        // World boundaries
        this.world = { xMin: 0, yMin: 0, xMax: 1000, yMax: 600 };

        this.x = x;
        this.y = y;
        this.displayX = x;
        this.displayY = y;

        this.scale = scale;
        this.speed = 0.8;

        this.currentAnimation = "idle";
        this.animations = {};
        this.frameIndex = 0;

        // Physics for jump
        this.isJumping = false;
        this.jumpVelocity = 0;
        this.gravity = 0.35;
        this.jumpStrength = -8;

        // Climbing
        this.isClimbing = false;
        this.climbSpeed = 1.2;
        this.climbTargetY = null;
        this.climbBarrierIDs = [2, 6]; // climbable walls

        // Jump-down fall
        this.jumpDownTarget = null; // target y to fall to
        this.jumpDownSpeed = 4;     // fall speed

        this.loadAnimations();
    }

    //------------------------------------------------------------
    // Load character animations
    //------------------------------------------------------------
    loadAnimations() {
        const S = (img) => img; // callback to avoid errors in loadImage

        this.animations.idle = [loadImage("assets/images/idle1.png", S)];

        this.animations.walk_left = [
            loadImage("assets/images/walk_left1.png", S),
            loadImage("assets/images/walk_left2.png", S),
            loadImage("assets/images/walk_left3.png", S)
        ];

        this.animations.walk_right = [
            loadImage("assets/images/walk_right1.png", S),
            loadImage("assets/images/walk_right2.png", S),
            loadImage("assets/images/walk_right3.png", S)
        ];

        this.animations.walk_front = [
            loadImage("assets/images/walk_front1.png", S),
            loadImage("assets/images/walk_front2.png", S),
            loadImage("assets/images/walk_front3.png", S)
        ];

        this.animations.walk_back = [
            loadImage("assets/images/walk_back1.png", S),
            loadImage("assets/images/walk_back2.png", S),
            loadImage("assets/images/walk_back3.png", S)
        ];

        this.animations.jump_up = [loadImage("assets/images/jump_up.png", S)];
        this.animations.jump_down = [loadImage("assets/images/jump_down.png", S)];
        this.animations.crouch = [loadImage("assets/images/crouch.png", S)];
        this.animations.climb = [loadImage("assets/images/climb.png", S)];
    }

    //------------------------------------------------------------
    // Returns a safe collision box for character feet
    //------------------------------------------------------------
    getCollisionBox() {
        const s = this.scale;
        const frames = this.animations[this.currentAnimation] || [];
        const frameIndex = Math.floor(this.frameIndex);
        const img = frames[frameIndex];

        // If image not loaded yet, return small placeholder box
        if (!img) {
            return { x: this.x, y: this.y, width: 10, height: 10 };
        }

        return {
            x: this.x + img.width * 0.35 * s,
            y: this.y + img.height * 0.90 * s,
            width: img.width * 0.30 * s,
            height: img.height * 0.10 * s
        };
    }

    //------------------------------------------------------------
    // Trigger jump-down if standing on a platform
    //------------------------------------------------------------
    triggerJumpDown(barriers) {
        const feet = this.getCollisionBox();
        const platform = barriers[1]; // top walkway
        const landing = barriers[9];  // target fall location

        // Check if touching top of platform
        const touchingTop =
            feet.x < platform.x + platform.w &&
            feet.x + feet.width > platform.x &&
            Math.abs(feet.y - platform.y) < 8;

        if (!touchingTop) return false;

        // Set target to above barrier 9
        this.jumpDownTarget = landing.y - 20;
        this.currentAnimation = "jump_down";
        this.isJumping = false; // disable normal jump
        return true;
    }

    //------------------------------------------------------------
    // Smooth fall to target (jump-down)
    //------------------------------------------------------------
    applyJumpDownFall() {
        if (this.jumpDownTarget === null) return;

        this.y += this.jumpDownSpeed;

        if (this.y >= this.jumpDownTarget) {
            this.y = this.jumpDownTarget;
            this.jumpDownTarget = null;
            this.currentAnimation = "idle";
        }
    }

    //------------------------------------------------------------
    // Gravity-based jump
    //------------------------------------------------------------
    applyGravity(barriers) {
        if (this.jumpDownTarget !== null) return; // skip if doing jump-down
        if (!this.isJumping) return;

        this.y += this.jumpVelocity;
        this.jumpVelocity += this.gravity;

        if (this.jumpVelocity > 0) this.currentAnimation = "jump_down";

        const feet = this.getCollisionBox();

        for (let b of barriers) {
            if (this.jumpVelocity >= 0) {
                const collide =
                    feet.x < b.x + b.w &&
                    feet.x + feet.width > b.x &&
                    feet.y < b.y + b.h &&
                    feet.y + feet.height > b.y;

                if (collide) {
                    this.isJumping = false;
                    this.jumpVelocity = 0;
                    this.y = b.y - (feet.height * 1.2);
                    this.currentAnimation = "idle";
                    return;
                }
            }
        }
    }

    //------------------------------------------------------------
    // Climb movement logic
    //------------------------------------------------------------
    climbMovement(barriers) {
        if (!this.isClimbing) return;

        const box = this.getCollisionBox();
        let climbingOn = null;

        for (let id of this.climbBarrierIDs) {
            const b = barriers[id];
            const touching =
                box.x < b.x + b.w &&
                box.x + box.width > b.x &&
                box.y < b.y + b.h &&
                box.y + box.height > b.y;
            if (touching) {
                climbingOn = b;
                break;
            }
        }

        if (!climbingOn) {
            this.isClimbing = false;
            this.currentAnimation = "idle";
            return;
        }

        if (this.climbTargetY === null) {
            this.climbTargetY = climbingOn.y - 40;
        }

        this.y = lerp(this.y, this.climbTargetY, 0.08);

        if (abs(this.y - this.climbTargetY) < 2) {
            this.isClimbing = false;
            this.climbTargetY = null;
            this.currentAnimation = "idle";
        }
    }

    //------------------------------------------------------------
    // Move character from pose
    //------------------------------------------------------------
    moveFromPose(label) {
        if (this.isJumping || this.jumpDownTarget !== null || this.isClimbing) return;

        switch (label) {
            case "walk_left": this.x -= this.speed; break;
            case "walk_right": this.x += this.speed; break;
            case "walk_front": this.y += this.speed; break;
            case "walk_back": this.y -= this.speed; break;
        }
    }

    //------------------------------------------------------------
    // Handle incoming OSC pose
    //------------------------------------------------------------
    changePose(label, barriers = null) {

        if (!Array.isArray(barriers)) barriers = [];

        // Jump-down mechanic
        if (label === "jump" && barriers && this.triggerJumpDown(barriers)) return;

        // Normal jump
        if (label === "jump" && !this.isJumping) {
            this.isJumping = true;
            this.jumpVelocity = this.jumpStrength;
            this.currentAnimation = "jump_up";
            return;
        }

        // Climb mechanic
        if (label === "climb") {
            const feet = this.getCollisionBox();
            for (let id of this.climbBarrierIDs) {
                const b = barriers[id];
                const touching =
                    feet.x < b.x + b.w &&
                    feet.x + feet.width > b.x &&
                    feet.y < b.y + b.h &&
                    feet.y + feet.height > b.y;
                if (touching) {
                    this.isClimbing = true;
                    this.climbTargetY = null;
                    this.currentAnimation = "climb";
                    return;
                }
            }
        }

        // Set animation for normal poses
        if (this.animations[label]) {
            this.currentAnimation = label;
            this.frameIndex = 0;
        }
    }

    //------------------------------------------------------------
    // Update character every frame
    //------------------------------------------------------------
    update(label, barriers) {
        this.moveFromPose(label);

        this.applyGravity(barriers);
        this.applyJumpDownFall();
        this.climbMovement(barriers);

        // Animate
        const frames = this.animations[this.currentAnimation];
        let animSpeed =
            ["walk_left", "walk_right", "walk_front", "walk_back"].includes(
                this.currentAnimation
            )
                ? 0.12 * (this.speed / 0.8)
                : 0.05;

        this.frameIndex += animSpeed;
        if (frames && this.frameIndex >= frames.length) this.frameIndex = 0;

        this.displayX = lerp(this.displayX, this.x, 0.3);
        this.displayY = lerp(this.displayY, this.y, 0.3);
    }

    //------------------------------------------------------------
    // Draw character
    //------------------------------------------------------------
    display(showCollision = false) {
        const frames = this.animations[this.currentAnimation];
        const frameIndex = Math.floor(this.frameIndex);
        const frame = frames ? frames[frameIndex] : null;

        if (frame) {
            image(
                frame,
                this.displayX,
                this.displayY,
                frame.width * this.scale,
                frame.height * this.scale
            );
        }

        // Debug collision box
        if (showCollision) {
            const b = this.getCollisionBox();
            noFill(); stroke(0, 255, 0);
            rect(b.x, b.y, b.width, b.height);
        }
    }
}
































//------------------------------------------------------------
// Character.js — MOVEMENT, ANIMATION, JUMP, FALL & CLIMB
//------------------------------------------------------------

// class Character {
//     constructor(x, y, scale = 0.13) {

//         // World boundaries
//         this.world = { xMin: 0, yMin: 0, xMax: 1000, yMax: 600 };

//         this.x = x;
//         this.y = y;
//         this.displayX = x;
//         this.displayY = y;

//         this.scale = scale;
//         this.speed = 0.8;

//         this.currentAnimation = "idle";
//         this.animations = {};
//         this.frameIndex = 0;

//         // -----------------------
//         // Jump / Gravity settings
//         // -----------------------
//         this.isJumping = false;
//         this.jumpVelocity = 0;
//         this.gravity = 0.35;
//         this.jumpStrength = -8; // upward velocity

//         // -----------------------
//         // Climbing
//         // -----------------------
//         this.isClimbing = false;
//         this.climbSpeed = -1.2; // upward climb movement
//         this.climbBarrierIndex = 2; // the climb wall (your index #2)

//         this.loadAnimations();
//     }

//     //------------------------------------------------------------
//     // Load animations
//     //------------------------------------------------------------
//     loadAnimations() {
//         const scaleImage = (img) => img;

//         this.animations.idle = [
//             loadImage("assets/images/idle1.png", scaleImage)
//         ];

//         this.animations.walk_left = [
//             loadImage("assets/images/walk_left1.png", scaleImage),
//             loadImage("assets/images/walk_left2.png", scaleImage),
//             loadImage("assets/images/walk_left3.png", scaleImage)
//         ];

//         this.animations.walk_right = [
//             loadImage("assets/images/walk_right1.png", scaleImage),
//             loadImage("assets/images/walk_right2.png", scaleImage),
//             loadImage("assets/images/walk_right3.png", scaleImage)
//         ];

//         this.animations.walk_front = [
//             loadImage("assets/images/walk_front1.png", scaleImage),
//             loadImage("assets/images/walk_front2.png", scaleImage),
//             loadImage("assets/images/walk_front3.png", scaleImage)
//         ];

//         this.animations.walk_back = [
//             loadImage("assets/images/walk_back1.png", scaleImage),
//             loadImage("assets/images/walk_back2.png", scaleImage),
//             loadImage("assets/images/walk_back3.png", scaleImage)
//         ];

//         // -----------------------
//         // Updated jump images
//         // -----------------------
//         this.animations.jump_up = [
//             loadImage("assets/images/jump_up.png", scaleImage)
//         ];
//         this.animations.jump_down = [
//             loadImage("assets/images/jump_down.png", scaleImage)
//         ];

//         // -----------------------
//         // Crouch and climb
//         // -----------------------
//         this.animations.crouch = [
//             loadImage("assets/images/crouch.png", scaleImage)
//         ];
//         this.animations.climb = [
//             loadImage("assets/images/climb.png", scaleImage)
//         ];
//     }

//     //------------------------------------------------------------
//     // Trigger pose from OSC
//     //------------------------------------------------------------
//     changePose(label) {

//         // JUMP TRIGGER
//         if (label === "jump" && !this.isJumping) {
//             this.isJumping = true;
//             this.jumpVelocity = this.jumpStrength;
//             this.currentAnimation = "jump_up";
//             return;
//         }

//         // CLIMB trigger only if touching the climb-barrier
//         if (label === "climb") {
//             this.isClimbing = true;
//             this.currentAnimation = "climb";
//             return;
//         }

//         // Regular poses
//         if (this.animations[label]) {
//             this.currentAnimation = label;
//             this.frameIndex = 0;
//         }
//     }

//     //------------------------------------------------------------
//     // SMALL FEET COLLISION BOX
//     //------------------------------------------------------------
//     getCollisionBox() {
//         const s = this.scale;
//         const img = this.animations[this.currentAnimation][Math.floor(this.frameIndex)];

//         return {
//             x: this.x + img.width * 0.35 * s,
//             y: this.y + img.height * 0.9 * s,
//             width: img.width * 0.3 * s,
//             height: img.height * 0.1 * s
//         };
//     }

//     //------------------------------------------------------------
//     // JUMP + GRAVITY
//     //------------------------------------------------------------
//     applyGravity(barriers) {
//         if (!this.isJumping) return;

//         // Apply vertical movement
//         this.y += this.jumpVelocity;
//         this.jumpVelocity += this.gravity;

//         // Switch to falling animation
//         if (this.jumpVelocity > 0) {
//             this.currentAnimation = "jump_down";
//         }

//         // Collision on landing only (ignore ceilings)
//         const feet = this.getCollisionBox();

//         for (let b of barriers) {
//             // Check landing (coming DOWN only)
//             if (this.jumpVelocity >= 0) {
//                 let wouldCollide =
//                     feet.x < b.x + b.w &&
//                     feet.x + feet.width > b.x &&
//                     feet.y < b.y + b.h &&
//                     feet.y + feet.height > b.y;

//                 if (wouldCollide) {
//                     // LAND HERE
//                     this.isJumping = false;
//                     this.jumpVelocity = 0;
//                     this.y = b.y - (feet.height * 1.2); // place above barrier
//                     this.currentAnimation = "idle";
//                     return;
//                 }
//             }
//         }
//     }

//     //------------------------------------------------------------
//     // Climbing movement
//     //------------------------------------------------------------
//     climbMovement(barriers) {
//         if (!this.isClimbing) return;

//         const climbBar = barriers[this.climbBarrierIndex];
//         const box = this.getCollisionBox();

//         // Check if still touching climb wall
//         const touching =
//             box.x < climbBar.x + climbBar.w &&
//             box.x + box.width > climbBar.x &&
//             box.y < climbBar.y + climbBar.h &&
//             box.y + box.height > climbBar.y;

//         if (!touching) {
//             this.isClimbing = false;
//             this.currentAnimation = "idle";
//             return;
//         }

//         // Move upward along the wall
//         this.y += this.climbSpeed;

//         // If reached top, stop climbing
//         if (this.y < climbBar.y - 50) {
//             this.isClimbing = false;
//             this.currentAnimation = "idle";
//         }
//     }

//     //------------------------------------------------------------
//     // REGULAR WALK MOVEMENT
//     //------------------------------------------------------------
//     moveFromPose(label) {
//         if (this.isJumping || this.isClimbing) return; // disable walk during jump/climb

//         switch (label) {
//             case "walk_left": this.x -= this.speed; break;
//             case "walk_right": this.x += this.speed; break;
//             case "walk_front": this.y += this.speed; break;
//             case "walk_back": this.y -= this.speed; break;
//         }
//     }

//     //------------------------------------------------------------
//     // MAIN UPDATE
//     //------------------------------------------------------------
//     update(label, barriers) {

//         // WALK
//         this.moveFromPose(label);

//         // JUMP / FALL
//         this.applyGravity(barriers);

//         // CLIMB
//         this.climbMovement(barriers);

//         // Animation frames
//         const frames = this.animations[this.currentAnimation];
//         let animationSpeed =
//             ["walk_left", "walk_right", "walk_front", "walk_back"].includes(this.currentAnimation)
//                 ? 0.12 * (this.speed / 0.8)
//                 : 0.05;

//         this.frameIndex += animationSpeed;
//         if (this.frameIndex >= frames.length) this.frameIndex = 0;

//         // Smooth visual lerp
//         this.displayX = lerp(this.displayX, this.x, 0.3);
//         this.displayY = lerp(this.displayY, this.y, 0.3);
//     }

//     //------------------------------------------------------------
//     // DRAW SPRITE
//     //------------------------------------------------------------
//     display(showCollision = false) {
//         const frames = this.animations[this.currentAnimation];
//         const currentFrame = frames[Math.floor(this.frameIndex)];

//         image(
//             currentFrame,
//             this.displayX,
//             this.displayY,
//             currentFrame.width * this.scale,
//             currentFrame.height * this.scale
//         );

//         if (showCollision) {
//             const b = this.getCollisionBox();
//             noFill(); stroke(0, 255, 0); rect(b.x, b.y, b.width, b.height);
//         }
//     }
// }















































// class Character {
//     constructor(x, y, scale = 0.13) {

//         // World boundaries
//         this.world = { xMin: 0, yMin: 0, xMax: 1000, yMax: 600 };

//         this.x = x;
//         this.y = y;

//         this.displayX = x;
//         this.displayY = y;

//         this.scale = scale;
//         this.speed = 0.8;

//         this.currentAnimation = "idle";
//         this.animations = {};
//         this.frameIndex = 0;

//         // -------------------------------
//         // JUMP SYSTEM
//         // -------------------------------
//         this.isJumping = false;
//         this.jumpHeight = 55;     // how high she jumps
//         this.jumpSpeed = 3;       // how fast she moves upward
//         this.fallSpeed = 3;       // how fast she falls down
//         this.jumpStartY = 0;      // where the jump starts

//         // -------------------------------
//         // CLIMB SYSTEM
//         // -------------------------------
//         this.isClimbing = false;
//         this.climbSpeed = 2;

//         this.loadAnimations();
//     }

//     //------------------------------------------------------------
//     // Load all animation frames
//     //------------------------------------------------------------
//     loadAnimations() {
//         const scaleImage = (img) => img;

//         this.animations.idle = [
//             loadImage("assets/images/idle1.png", scaleImage)
//         ];

//         this.animations.walk_left = [
//             loadImage("assets/images/walk_left1.png", scaleImage),
//             loadImage("assets/images/walk_left2.png", scaleImage),
//             loadImage("assets/images/walk_left3.png", scaleImage)
//         ];

//         this.animations.walk_right = [
//             loadImage("assets/images/walk_right1.png", scaleImage),
//             loadImage("assets/images/walk_right2.png", scaleImage),
//             loadImage("assets/images/walk_right3.png", scaleImage)
//         ];

//         this.animations.walk_front = [
//             loadImage("assets/images/walk_front1.png", scaleImage),
//             loadImage("assets/images/walk_front2.png", scaleImage),
//             loadImage("assets/images/walk_front3.png", scaleImage)
//         ];

//         this.animations.walk_back = [
//             loadImage("assets/images/walk_back1.png", scaleImage),
//             loadImage("assets/images/walk_back2.png", scaleImage),
//             loadImage("assets/images/walk_back3.png", scaleImage)
//         ];

//         // Special animations
//         this.animations.jump = [loadImage("assets/images/jump.png", scaleImage)];
//         this.animations.crouch = [loadImage("assets/images/crouch.png", scaleImage)];
//         this.animations.climb = [loadImage("assets/images/climb.png", scaleImage)];
//     }

//     //------------------------------------------------------------
//     // Switch pose when OSC arrives
//     //------------------------------------------------------------
//     changePose(label) {
//         if (label === "jump") {
//             this.startJump();
//             return;
//         }

//         if (label === "climb") {
//             // Only start climbing when touching a climbable barrier
//             if (window.touchingClimbable) {
//                 this.startClimb();
//             }
//             return;
//         }

//         if (label === "crouch") {
//             this.currentAnimation = "crouch";
//             this.frameIndex = 0;
//             return;
//         }

//         if (this.animations[label]) {
//             this.currentAnimation = label;
//             this.frameIndex = 0;
//         }
//     }

//     //------------------------------------------------------------
//     // START JUMP
//     //------------------------------------------------------------
//     startJump() {
//         if (this.isJumping || this.isClimbing) return; // prevent spam

//         this.isJumping = true;
//         this.jumpStartY = this.y;
//         this.currentAnimation = "jump";
//         this.frameIndex = 0;
//     }

//     //------------------------------------------------------------
//     // APPLY JUMP LOGIC
//     //------------------------------------------------------------
//     updateJump() {
//         if (!this.isJumping) return;

//         // PHASE 1 — going up
//         if (this.y > this.jumpStartY - this.jumpHeight) {
//             this.y -= this.jumpSpeed;
//         }
//         // PHASE 2 — falling back down
//         else {
//             this.y += this.fallSpeed;

//             // When she lands back where she started → jump ends
//             if (this.y >= this.jumpStartY) {
//                 this.y = this.jumpStartY;
//                 this.isJumping = false;
//                 this.currentAnimation = "idle";
//             }
//         }
//     }

//     //------------------------------------------------------------
//     // START CLIMB
//     //------------------------------------------------------------
//     startClimb() {
//         if (this.isJumping) return;

//         this.isClimbing = true;
//         this.currentAnimation = "climb";
//         this.frameIndex = 0;
//     }

//     //------------------------------------------------------------
//     // APPLY CLIMB LOGIC
//     //------------------------------------------------------------
//     updateClimb() {
//         if (!this.isClimbing) return;

//         // Move up smoothly
//         this.y -= this.climbSpeed;

//         // When character reaches top of climbable barrier:
//         if (window.climbTopY && this.y <= window.climbTopY) {
//             this.isClimbing = false;
//             this.currentAnimation = "idle";
//         }
//     }

//     //------------------------------------------------------------
//     // Movement from walk pose
//     //------------------------------------------------------------
//     moveFromPose(label) {

//         // If jumping/climbing → movement disabled
//         if (this.isJumping || this.isClimbing) return;

//         switch (label) {
//             case "walk_left": this.x -= this.speed; break;
//             case "walk_right": this.x += this.speed; break;
//             case "walk_front": this.y += this.speed; break;
//             case "walk_back": this.y -= this.speed; break;
//         }

//         // World clamp
//         const box = this.getCollisionBox();

//         if (box.x < this.world.xMin) this.x += this.world.xMin - box.x;
//         if (box.x + box.width > this.world.xMax) this.x -= (box.x + box.width - this.world.xMax);
//         if (box.y < this.world.yMin) this.y += this.world.yMin - box.y;
//         if (box.y + box.height > this.world.yMax) this.y -= (box.y + box.height - this.world.yMax);
//     }

//     //------------------------------------------------------------
//     // Foot-only hitbox
//     //------------------------------------------------------------
//     getCollisionBox() {
//         const s = this.scale;
//         const img = this.animations[this.currentAnimation][Math.floor(this.frameIndex)];

//         return {
//             x: this.x + img.width * 0.35 * s,
//             y: this.y + img.height * 0.9 * s,
//             width: img.width * 0.3 * s,
//             height: img.height * 0.1 * s
//         };
//     }

//     //------------------------------------------------------------
//     // Main update function
//     //------------------------------------------------------------
//     update(label) {

//         // Walking movement
//         if (!this.isJumping && !this.isClimbing) {
//             if (["walk_left", "walk_right", "walk_front", "walk_back"].includes(label)) {
//                 this.moveFromPose(label);
//             }
//         }

//         // Apply jump and climb logic
//         this.updateJump();
//         this.updateClimb();

//         // Animation frame advance
//         const frames = this.animations[this.currentAnimation];
//         let animationSpeed = this.currentAnimation.includes("walk")
//             ? 0.12 * (this.speed / 0.8)
//             : 0.05;

//         this.frameIndex += animationSpeed;
//         if (this.frameIndex >= frames.length) this.frameIndex = 0;

//         // Smooth rendering
//         this.displayX = lerp(this.displayX, this.x, 0.3);
//         this.displayY = lerp(this.displayY, this.y, 0.3);
//     }

//     //------------------------------------------------------------
//     // Draw the sprite + optional collision box
//     //------------------------------------------------------------
//     display(showCollision = false) {
//         const frames = this.animations[this.currentAnimation];
//         const currentFrame = frames[Math.floor(this.frameIndex)];

//         image(
//             currentFrame,
//             this.displayX,
//             this.displayY,
//             currentFrame.width * this.scale,
//             currentFrame.height * this.scale
//         );

//         if (showCollision) {
//             const box = this.getCollisionBox();
//             noFill();
//             stroke(0, 255, 0);
//             rect(box.x, box.y, box.width, box.height);
//         }
//     }
// }

























// //------------------------------------------------------------
// // Character.js — Handles character movement + sprite animation
// //------------------------------------------------------------

// class Character {
//     constructor(x, y, scale = 0.13) {

//         // World boundaries matching your canvas (1000×600)
//         this.world = { xMin: 0, yMin: 0, xMax: 1000, yMax: 600 };

//         // Logical (collision) position
//         this.x = x;
//         this.y = y;

//         // Display position (uses lerp for smooth visual movement)
//         this.displayX = x;
//         this.displayY = y;

//         this.scale = scale;
//         this.speed = 0.8; // base movement speed

//         this.currentAnimation = "idle"; // default animation
//         this.animations = {};          // will contain animation frames

//         this.frameIndex = 0; // animation frame counter

//         this.loadAnimations();
//     }

//     //------------------------------------------------------------
//     // Load all animation frames for all poses
//     //------------------------------------------------------------
//     loadAnimations() {
//         // NOTE: scaleImage isn't used, but good placeholder if needed later
//         const scaleImage = (img) => img;

//         // Idle animation
//         this.animations.idle = [
//             loadImage("assets/images/idle1.png", scaleImage)
//         ];

//         // LEFT walk animation (3 frames)
//         this.animations.walk_left = [
//             loadImage("assets/images/walk_left1.png", scaleImage),
//             loadImage("assets/images/walk_left2.png", scaleImage),
//             loadImage("assets/images/walk_left3.png", scaleImage)
//         ];

//         // RIGHT walk animation
//         this.animations.walk_right = [
//             loadImage("assets/images/walk_right1.png", scaleImage),
//             loadImage("assets/images/walk_right2.png", scaleImage),
//             loadImage("assets/images/walk_right3.png", scaleImage)
//         ];

//         // FRONT walk animation
//         this.animations.walk_front = [
//             loadImage("assets/images/walk_front1.png", scaleImage),
//             loadImage("assets/images/walk_front2.png", scaleImage),
//             loadImage("assets/images/walk_front3.png", scaleImage)
//         ];

//         // BACK walk animation
//         this.animations.walk_back = [
//             loadImage("assets/images/walk_back1.png", scaleImage),
//             loadImage("assets/images/walk_back2.png", scaleImage),
//             loadImage("assets/images/walk_back3.png", scaleImage)
//         ];

//         // Special poses
//         this.animations.jump = [loadImage("assets/images/jump.png", scaleImage)];
//         this.animations.crouch = [loadImage("assets/images/crouch.png", scaleImage)];
//         this.animations.climb = [loadImage("assets/images/climb.png", scaleImage)];
//     }

//     //------------------------------------------------------------
//     // Switches animation set when new pose arrives from OSC
//     //------------------------------------------------------------
//     changePose(label) {
//         if (this.animations[label]) {
//             this.currentAnimation = label;
//             this.frameIndex = 0; // restart animation
//         }
//     }

//     //------------------------------------------------------------
//     // Moves character based on recognized pose label
//     //------------------------------------------------------------
//     moveFromPose(label) {
//         switch (label) {
//             case "walk_left": this.x -= this.speed; break;
//             case "walk_right": this.x += this.speed; break;
//             case "walk_front": this.y += this.speed; break;
//             case "walk_back": this.y -= this.speed; break;
//         }

//         //------------------------------------------------------------
//         // WORLD BOUNDARY CLAMPING
//         // Ensures the character / hitbox never leaves the canvas
//         //------------------------------------------------------------
//         const box = this.getCollisionBox();

//         if (box.x < this.world.xMin)
//             this.x += this.world.xMin - box.x;

//         if (box.x + box.width > this.world.xMax)
//             this.x -= (box.x + box.width - this.world.xMax);

//         if (box.y < this.world.yMin)
//             this.y += this.world.yMin - box.y;

//         if (box.y + box.height > this.world.yMax)
//             this.y -= (box.y + box.height - this.world.yMax);
//     }

//     //------------------------------------------------------------
//     // Collision box — FOOT-ONLY collision rectangle (platformer)
//     //
//     // This keeps your interaction grounded, not body-wide.
//     // The hitbox follows your sprites’ bottom area.
//     //------------------------------------------------------------
//     getCollisionBox() {
//         const s = this.scale;

//         // Which frame is currently displayed
//         const img = this.animations[this.currentAnimation][Math.floor(this.frameIndex)];

//         return {
//             x: this.x + img.width * 0.35 * s,   // horizontal offset from sprite
//             y: this.y + img.height * 0.9 * s,   // near the bottom (feet)
//             width: img.width * 0.3 * s,         // narrow hitbox
//             height: img.height * 0.1 * s        // short (only the feet)
//         };
//     }

//     //------------------------------------------------------------
//     // Update animation frame and movement every draw() loop
//     //------------------------------------------------------------
//     update(label) {

//         // Movement only when pose is walking
//         if (["walk_left", "walk_right", "walk_front", "walk_back"].includes(label)) {
//             this.moveFromPose(label);
//         }

//         //------------------------------------------------------------
//         // ANIMATION SPEED CONTROL
//         // Walking → faster animation
//         // Idle     → slow subtle movement
//         //------------------------------------------------------------
//         const frames = this.animations[this.currentAnimation];
//         let animationSpeed;

//         if (["walk_left", "walk_right", "walk_front", "walk_back"].includes(this.currentAnimation)) {
//             animationSpeed = 0.12 * (this.speed / 0.8);
//         } else {
//             animationSpeed = 0.05;
//         }

//         // Advance frame index
//         this.frameIndex += animationSpeed;
//         if (this.frameIndex >= frames.length) this.frameIndex = 0;

//         //------------------------------------------------------------
//         // Smooth display movement using lerp
//         // Prevents jitter from OSC pose detection
//         //------------------------------------------------------------
//         this.displayX = lerp(this.displayX, this.x, 0.3);
//         this.displayY = lerp(this.displayY, this.y, 0.3);
//     }

//     //------------------------------------------------------------
//     // Draw the character + optional collision box
//     //------------------------------------------------------------
//     display(showCollision = false) {
//         const frames = this.animations[this.currentAnimation];
//         const currentFrame = frames[Math.floor(this.frameIndex)];

//         // Draw the sprite
//         image(
//             currentFrame,
//             this.displayX,
//             this.displayY,
//             currentFrame.width * this.scale,
//             currentFrame.height * this.scale
//         );

//         // Draw hitbox if debug mode ON
//         if (showCollision) {
//             const box = this.getCollisionBox();
//             noFill();
//             stroke(0, 255, 0);
//             rect(box.x, box.y, box.width, box.height);
//         }
//     }
// }
