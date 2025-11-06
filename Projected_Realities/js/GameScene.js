// js/GameScene.js
class GameScene {
    constructor(bgImage) {
        this.bg = bgImage;
        this.blockZones = [];
    }

    addBlockZone(x, y, w, h) {
        this.blockZones.push({ x, y, w, h });
    }

    display() {
        image(this.bg, 0, 0, width, height);
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
