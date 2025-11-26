// js/GameScene.js
class GameScene {
    constructor(bgImage) {
        // this.world = {
        //     xMin: 0,
        //     yMin: 0,
        //     xMax: 800,
        //     yMax: 1212
        // };

        this.bg = bgImage;
        this.blockZones = [];

        this.obstacles = [
            { x: 100, y: 200, w: 150, h: 300 },  // building 1
            { x: 400, y: 100, w: 200, h: 200 },  // building 2

        ];
        for (let b of this.obstacles) {
            if (this.x > b.x && this.x < b.x + b.w &&
                this.y > b.y && this.y < b.y + b.h) {
                this.x = oldX;
                this.y = oldY;
            }
        }


    }

    addBlockZone(x, y, w, h) {
        this.blockZones.push({ x, y, w, h });
    }

    display() {
        if (this.background) {
            image(this.background, 0, 0, this.background.width, this.background.height);
        }

    }

    checkCollision(character) {
        for (let zone of this.blockZones) {
            if (
                character.x > zone.x &&
                character.x < zone.x + zone.w &&
                character.y > zone.y &&
                character.y < zone.y + zone.h
            ) {
                // block movement
                return true;
            }
        }
        return false;
    }
}
