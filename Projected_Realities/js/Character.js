// js/Character.js

class Character {
    constructor(x, y, frames) {
        this.x = x;
        this.y = y;
        this.frames = frames; // array of images
        this.currentFrame = 0;
        this.frameDelay = 10;
        this.frameCount = 0;
    }

    update(direction) {
        // Move character
        if (direction === "left") this.x -= 5;
        if (direction === "right") this.x += 5;

        // Loop through animation frames
        this.frameCount++;
        if (this.frameCount > this.frameDelay) {
            this.currentFrame = (this.currentFrame + 1) % this.frames.length;
            this.frameCount = 0;
        }
    }

    display() {
        image(this.frames[this.currentFrame], this.x, this.y, 120, 120);
    }
}
