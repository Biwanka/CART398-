// js/Character.js
// Character.js
// ---------------------------------------------
// Defines the animated character and reactions
// ---------------------------------------------
// Character.js
//------------------------------------------------------------
// Character.js — receives pose label & animates sprite
//------------------------------------------------------------


class Character {
    constructor(x, y) {


        this.world = {
            xMin: 0,
            yMin: 0,
            xMax: 800,
            yMax: 1212
        };


        this.scale = 0.3; // adjust until she fits on your canvas
        this.speed = 4; // adjust to taste


        this.x = x;
        this.y = y;
        this.currentAnimation = "idle";
        this.animations = {
            idle: [loadImage("assets/idle1.png")],
            walk_left: [
                loadImage("assets/walk_left1.png"),
                loadImage("assets/walk_left2.png"),
                loadImage("assets/walk_left3.png")
            ],
            walk_right: [
                loadImage("assets/walk_right1.png"),
                loadImage("assets/walk_right2.png"),
                loadImage("assets/walk_right3.png")
            ],
            walk_front: [
                loadImage("assets/walk_front1.png"),
                loadImage("assets/walk_front2.png"),
                loadImage("assets/walk_front3.png")
            ],
            walk_back: [
                loadImage("assets/walk_back1.png"),
                loadImage("assets/walk_back2.png"),
                loadImage("assets/walk_back3.png")
            ],
            jump: [loadImage("assets/jump.png")],
            crouch: [loadImage("assets/crouch.png")],
            climb: [loadImage("assets/climb.png")]
        };

        this.frameIndex = 0;
        this.frameDelay = 6;
        this.frameCounter = 0;

    }

    changePose(label) {
        if (this.animations[label]) {
            this.currentAnimation = label;
            this.frameIndex = 0;
            console.log("🧍 Character changed to:", label);
        }
    }

    moveFromPose(label) {
        const oldX = this.x;
        const oldY = this.y;

        switch (label) {
            case "walk_left": this.x -= this.speed; break;
            case "walk_right": this.x += this.speed; break;
            case "walk_front": this.y += this.speed; break;
            case "walk_back": this.y -= this.speed; break;
        }

        // block movement if outside world boundaries
        if (this.x < this.world.xMin ||
            this.x > this.world.xMax ||
            this.y < this.world.yMin ||
            this.y > this.world.yMax) {
            this.x = oldX;
            this.y = oldY;
        }
    }


    update(label) {
        this.moveFromPose(label);

        // animation frame updates
        this.frameCounter++;
        if (this.frameCounter > this.frameDelay) {
            this.frameCounter = 0;
            const frames = this.animations[this.currentAnimation];
            this.frameIndex = (this.frameIndex + 1) % frames.length;
        }
    }


    display() {
        const currentFrame = this.animations[this.currentAnimation][this.frameIndex];
        image(
            currentFrame,
            this.x,
            this.y,
            currentFrame.width * this.scale,
            currentFrame.height * this.scale
        );
    }

}


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
