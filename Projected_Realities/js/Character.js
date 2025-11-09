// js/Character.js
// Character.js
// ---------------------------------------------
// Defines the animated character and reactions
// ---------------------------------------------

class Character {
    constructor(x, y) {
        this.x = x;
        this.y = y;
        this.state = "idle"; // current animation
    }

    changeAnimation(label) {
        // Called when Max sends a pose label
        if (label === 0) this.state = "idle";
        else if (label === 1) this.state = "walk";
        else if (label === 2) this.state = "jump";
    }

    update() {
        // You can add logic later like gravity or horizontal move
    }

    display() {
        // Placeholder visuals until animations are integrated
        noStroke();
        fill(255, 180, 200);
        ellipse(this.x, this.y, 40);
        textAlign(CENTER);
        textSize(14);
        fill(255);
        text(this.state, this.x, this.y - 30);
    }
}







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
