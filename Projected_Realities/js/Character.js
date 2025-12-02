
// //------------------------------------------------------------
// // Character.js — receives pose label & animates sprite
// //------------------------------------------------------------
// js/Character.js
class Character {
    constructor(x, y, scale = 0.13) {
        this.world = { xMin: 0, yMin: 0, xMax: 1000, yMax: 600 };

        this.x = x;
        this.y = y;
        this.displayX = x; // for smooth lerp
        this.displayY = y;
        this.scale = scale;
        this.speed = 0.8; // movement speed

        this.currentAnimation = "idle";
        this.animations = {};

        this.frameIndex = 0;

        this.loadAnimations();
    }

    loadAnimations() {
        const scaleImage = (img) => img;

        this.animations.idle = [loadImage("assets/images/idle1.png", scaleImage)];
        this.animations.walk_left = [
            loadImage("assets/images/walk_left1.png", scaleImage),
            loadImage("assets/images/walk_left2.png", scaleImage),
            loadImage("assets/images/walk_left3.png", scaleImage)
        ];
        this.animations.walk_right = [
            loadImage("assets/images/walk_right1.png", scaleImage),
            loadImage("assets/images/walk_right2.png", scaleImage),
            loadImage("assets/images/walk_right3.png", scaleImage)
        ];
        this.animations.walk_front = [
            loadImage("assets/images/walk_front1.png", scaleImage),
            loadImage("assets/images/walk_front2.png", scaleImage),
            loadImage("assets/images/walk_front3.png", scaleImage)
        ];
        this.animations.walk_back = [
            loadImage("assets/images/walk_back1.png", scaleImage),
            loadImage("assets/images/walk_back2.png", scaleImage),
            loadImage("assets/images/walk_back3.png", scaleImage)
        ];
        this.animations.jump = [loadImage("assets/images/jump.png", scaleImage)];
        this.animations.crouch = [loadImage("assets/images/crouch.png", scaleImage)];
        this.animations.climb = [loadImage("assets/images/climb.png", scaleImage)];
    }

    changePose(label) {
        if (this.animations[label]) {
            this.currentAnimation = label;
            this.frameIndex = 0;
        }
    }

    moveFromPose(label) {
        switch (label) {
            case "walk_left": this.x -= this.speed; break;
            case "walk_right": this.x += this.speed; break;
            case "walk_front": this.y += this.speed; break;
            case "walk_back": this.y -= this.speed; break;
        }

        // Keep character inside world boundaries
        const box = this.getCollisionBox();
        if (box.x < this.world.xMin) this.x += this.world.xMin - box.x;
        if (box.x + box.width > this.world.xMax) this.x -= (box.x + box.width - this.world.xMax);
        if (box.y < this.world.yMin) this.y += this.world.yMin - box.y;
        if (box.y + box.height > this.world.yMax) this.y -= (box.y + box.height - this.world.yMax);
    }

    // Feet-only horizontal collision box for platformer
    getCollisionBox() {
        const s = this.scale;
        const img = this.animations[this.currentAnimation][Math.floor(this.frameIndex)];

        return {
            x: this.x + img.width * 0.35 * s,   // horizontal offset
            y: this.y + img.height * 0.9 * s,   // near bottom
            width: img.width * 0.3 * s,         // thin horizontal box
            height: img.height * 0.1 * s        // very short, only feet
        };
    }

    update(label) {
        // Move if walking
        if (["walk_left", "walk_right", "walk_front", "walk_back"].includes(label)) {
            this.moveFromPose(label);
        }

        // Animation speed linked to movement
        const frames = this.animations[this.currentAnimation];
        let animationSpeed;

        if (["walk_left", "walk_right", "walk_front", "walk_back"].includes(this.currentAnimation)) {
            animationSpeed = 0.12 * (this.speed / 0.8); // legs match movement speed
        } else {
            animationSpeed = 0.05; // idle animations slow
        }

        this.frameIndex += animationSpeed;
        if (this.frameIndex >= frames.length) this.frameIndex = 0;

        // Smooth display position
        this.displayX = lerp(this.displayX, this.x, 0.3);
        this.displayY = lerp(this.displayY, this.y, 0.3);
    }

    display(showCollision = false) {
        const frames = this.animations[this.currentAnimation];
        const currentFrame = frames[Math.floor(this.frameIndex)];

        image(
            currentFrame,
            this.displayX,
            this.displayY,
            currentFrame.width * this.scale,
            currentFrame.height * this.scale
        );

        if (showCollision) {
            const box = this.getCollisionBox();
            noFill();
            stroke(0, 255, 0);
            rect(box.x, box.y, box.width, box.height);
        }
    }
}


















// class Character {
//     constructor(x, y, scale = 0.25) { // smaller scale
//         this.world = {
//             xMin: 0,
//             yMin: 0,
//             xMax: 1200,   // canvas width
//             yMax: 600     // canvas height
//         };

//         this.x = x;
//         this.y = y;
//         this.scale = scale;
//         this.speed = 4;

//         this.currentAnimation = "idle";
//         this.animations = {
//             idle: [loadImage("assets/images/idle1.png")],
//             walk_left: [
//                 loadImage("assets/images/walk_left1.png"),
//                 loadImage("assets/images/walk_left2.png"),
//                 loadImage("assets/images/walk_left3.png")
//             ],
//             walk_right: [
//                 loadImage("assets/images/walk_right1.png"),
//                 loadImage("assets/images/walk_right2.png"),
//                 loadImage("assets/images/walk_right3.png")
//             ],
//             walk_front: [
//                 loadImage("assets/images/walk_front1.png"),
//                 loadImage("assets/images/walk_front2.png"),
//                 loadImage("assets/images/walk_front3.png")
//             ],
//             walk_back: [
//                 loadImage("assets/images/walk_back1.png"),
//                 loadImage("assets/images/walk_back2.png"),
//                 loadImage("assets/images/walk_back3.png")
//             ],
//             jump: [loadImage("assets/images/jump.png")],
//             crouch: [loadImage("assets/images/crouch.png")],
//             climb: [loadImage("assets/images/climb.png")]
//         };

//         this.frameIndex = 0;
//         this.frameDelay = 6;
//         this.frameCounter = 0;

//         // collision box relative to character
//         this.collisionOffset = { x: 10, y: 60, width: 50, height: 50 }; // adjust as needed
//     }

//     changePose(label) {
//         if (this.animations[label]) {
//             this.currentAnimation = label;
//             this.frameIndex = 0;
//         }
//     }

//     moveFromPose(label) {
//         const oldX = this.x;
//         const oldY = this.y;

//         switch (label) {
//             case "walk_left": this.x -= this.speed; break;
//             case "walk_right": this.x += this.speed; break;
//             case "walk_front": this.y += this.speed; break;
//             case "walk_back": this.y -= this.speed; break;
//         }

//         const box = this.getCollisionBox();
//         if (box.x < this.world.xMin) this.x += this.world.xMin - box.x;
//         if (box.x + box.width > this.world.xMax) this.x -= (box.x + box.width - this.world.xMax);
//         if (box.y < this.world.yMin) this.y += this.world.yMin - box.y;
//         if (box.y + box.height > this.world.yMax) this.y -= (box.y + box.height - this.world.yMax);
//     }

//     getCollisionBox() {
//         return {
//             x: this.x + this.collisionOffset.x,
//             y: this.y + this.collisionOffset.y,
//             width: this.collisionOffset.width,
//             height: this.collisionOffset.height
//         };
//     }

//     update(label) {
//         this.moveFromPose(label);

//         this.frameCounter++;
//         if (this.frameCounter > this.frameDelay) {
//             this.frameCounter = 0;
//             const frames = this.animations[this.currentAnimation];
//             this.frameIndex = (this.frameIndex + 1) % frames.length;
//         }
//     }

//     display(showCollision = false) {
//         const currentFrame = this.animations[this.currentAnimation][this.frameIndex];
//         image(
//             currentFrame,
//             this.x,
//             this.y,
//             currentFrame.width * this.scale,
//             currentFrame.height * this.scale
//         );

//         if (showCollision) {
//             const box = this.getCollisionBox();
//             noFill();
//             stroke(255, 0, 0);
//             rect(box.x, box.y, box.width, box.height);
//         }
//     }
// }



























// class Character {
//     constructor(x, y) {
//         // canvas/world boundaries
//         this.world = {
//             xMin: 0,
//             yMin: 0,
//             xMax: 800 - 50,  // subtract approx character width
//             yMax: 1212 - 100 // subtract approx character height
//         };

//         this.scale = 0.3; // adjust size
//         this.speed = 4;

//         this.x = x;
//         this.y = y;
//         this.currentAnimation = "idle";
//         this.animations = {
//             idle: [loadImage("assets/images/idle1.png")],
//             walk_left: [loadImage("assets/images/walk_left1.png"), loadImage("assets/images/walk_left2.png"), loadImage("assets/images/walk_left3.png")],
//             walk_right: [loadImage("assets/images/walk_right1.png"), loadImage("assets/images/walk_right2.png"), loadImage("assets/images/walk_right3.png")],
//             walk_front: [loadImage("assets/images/walk_front1.png"), loadImage("assets/images/walk_front2.png"), loadImage("assets/images/walk_front3.png")],
//             walk_back: [loadImage("assets/images/walk_back1.png"), loadImage("assets/images/walk_back2.png"), loadImage("assets/images/walk_back3.png")],
//             jump: [loadImage("assets/images/jump.png")],
//             crouch: [loadImage("assets/images/crouch.png")],
//             climb: [loadImage("assets/images/climb.png")]
//         };

//         this.frameIndex = 0;
//         this.frameDelay = 6;
//         this.frameCounter = 0;
//     }

//     changePose(label) {
//         if (this.animations[label]) {
//             this.currentAnimation = label;
//             this.frameIndex = 0;
//         }
//     }

//     moveFromPose(label) {
//         const oldX = this.x;
//         const oldY = this.y;

//         switch (label) {
//             case "walk_left": this.x -= this.speed; break;
//             case "walk_right": this.x += this.speed; break;
//             case "walk_front": this.y += this.speed; break;
//             case "walk_back": this.y -= this.speed; break;
//         }

//         // boundaries check
//         if (this.x < this.world.xMin || this.x > this.world.xMax) this.x = oldX;
//         if (this.y < this.world.yMin || this.y > this.world.yMax) this.y = oldY;
//     }

//     update(label) {
//         this.moveFromPose(label);
//         this.frameCounter++;
//         if (this.frameCounter > this.frameDelay) {
//             this.frameCounter = 0;
//             const frames = this.animations[this.currentAnimation];
//             this.frameIndex = (this.frameIndex + 1) % frames.length;
//         }
//     }

//     display() {
//         const currentFrame = this.animations[this.currentAnimation][this.frameIndex];
//         image(
//             currentFrame,
//             this.x,
//             this.y,
//             currentFrame.width * this.scale,
//             currentFrame.height * this.scale
//         );
//     }
// }























// class Character {
//     constructor(x, y) {


//         this.world = {
//             xMin: 0,
//             yMin: 0,
//             xMax: 800,
//             yMax: 1212
//         };


//         this.scale = 0.3; // adjust until she fits on your canvas
//         this.speed = 4; // adjust to taste


//         this.x = x;
//         this.y = y;
//         this.currentAnimation = "idle";
//         this.animations = {
//             idle: [loadImage("assets/idle1.png")],
//             walk_left: [
//                 loadImage("assets/walk_left1.png"),
//                 loadImage("assets/walk_left2.png"),
//                 loadImage("assets/walk_left3.png")
//             ],
//             walk_right: [
//                 loadImage("assets/walk_right1.png"),
//                 loadImage("assets/walk_right2.png"),
//                 loadImage("assets/walk_right3.png")
//             ],
//             walk_front: [
//                 loadImage("assets/walk_front1.png"),
//                 loadImage("assets/walk_front2.png"),
//                 loadImage("assets/walk_front3.png")
//             ],
//             walk_back: [
//                 loadImage("assets/walk_back1.png"),
//                 loadImage("assets/walk_back2.png"),
//                 loadImage("assets/walk_back3.png")
//             ],
//             jump: [loadImage("assets/jump.png")],
//             crouch: [loadImage("assets/crouch.png")],
//             climb: [loadImage("assets/climb.png")]
//         };

//         this.frameIndex = 0;
//         this.frameDelay = 6;
//         this.frameCounter = 0;

//     }

//     changePose(label) {
//         if (this.animations[label]) {
//             this.currentAnimation = label;
//             this.frameIndex = 0;
//             console.log("🧍 Character changed to:", label);
//         }
//     }
//     moveFromPose(label) {
//         const oldX = this.x;
//         const oldY = this.y;

//         switch (label) {
//             case "walk_left": this.x -= this.speed; break;
//             case "walk_right": this.x += this.speed; break;
//             case "walk_front": this.y += this.speed; break;
//             case "walk_back": this.y -= this.speed; break;
//         }

//         // if we hit the world boundary, revert and send collision
//         if (this.x < this.world.xMin ||
//             this.x > this.world.xMax ||
//             this.y < this.world.yMin ||
//             this.y > this.world.yMax) {
//             this.x = oldX;
//             this.y = oldY;
//             // optional intensity: 0.5 - 1.5 depending on speed
//             if (window.audioEngine && typeof window.audioEngine.onCollisionImpact === 'function') {
//                 window.audioEngine.onCollisionImpact(1.0);
//             }
//         }
//     }



//     update(label) {
//         this.moveFromPose(label);

//         // animation frame updates
//         this.frameCounter++;
//         if (this.frameCounter > this.frameDelay) {
//             this.frameCounter = 0;
//             const frames = this.animations[this.currentAnimation];
//             this.frameIndex = (this.frameIndex + 1) % frames.length;
//         }
//     }


//     display() {
//         const currentFrame = this.animations[this.currentAnimation][this.frameIndex];
//         image(
//             currentFrame,
//             this.x,
//             this.y,
//             currentFrame.width * this.scale,
//             currentFrame.height * this.scale
//         );
//     }

// }


// class Character {
//     constructor(x, y) {
//         this.x = x;
//         this.y = y;
//         this.state = "idle"; // current animation
//     }

//     changeAnimation(label) {
//         // Called when Max sends a pose label
//         if (label === 0) this.state = "idle";
//         else if (label === 1) this.state = "walk";
//         else if (label === 2) this.state = "jump";
//     }

//     update() {
//         // You can add logic later like gravity or horizontal move
//     }

//     display() {
//         // Placeholder visuals until animations are integrated
//         noStroke();
//         fill(255, 180, 200);
//         ellipse(this.x, this.y, 40);
//         textAlign(CENTER);
//         textSize(14);
//         fill(255);
//         text(this.state, this.x, this.y - 30);
//     }
// }







// class Character {
//     constructor(x, y, frames) {
//         this.x = x;
//         this.y = y;
//         this.frames = frames; // array of images
//         this.currentFrame = 0;
//         this.frameDelay = 10;
//         this.frameCount = 0;
//     }

//     update(direction) {
//         // Move character
//         if (direction === "left") this.x -= 5;
//         if (direction === "right") this.x += 5;

//         // Loop through animation frames
//         this.frameCount++;
//         if (this.frameCount > this.frameDelay) {
//             this.currentFrame = (this.currentFrame + 1) % this.frames.length;
//             this.frameCount = 0;
//         }
//     }

//     display() {
//         image(this.frames[this.currentFrame], this.x, this.y, 120, 120);
//     }
// }
