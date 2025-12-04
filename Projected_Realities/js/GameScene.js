//------------------------------------------------------------
// GameScene.js — Main game loop, collisions, OSC, debug mode
//------------------------------------------------------------

let game = {
    poseLabel: "idle",
    debugMode: true,
    socket: null,
    barriers: [],
    placingBarrier: null,
    myCharacter: null,
    audioEngine: null,
};

//------------------------------------------------------------
// p5.js SETUP
//------------------------------------------------------------
function setup() {
    const canvas = createCanvas(1000, 600);
    canvas.parent(document.body);

    // Character instance
    game.myCharacter = new Character(50, 225);

    // PREDEFINED BARRIERS 
    game.barriers = [
        // { x: 0, y: 357, w: 677, h: 25 }, //bottom barrier of walkway
        { x: 0, y: 294, w: 682, h: 25 }, // 0   //top barrier of walkway
        { x: 0, y: 357, w: 683, h: 80 },  // 1    // bottom barrier of walkway but the full side of the building
        { x: 676, y: 279, w: 184, h: 189 },  //2   //climb wall
        { x: 460, y: 464, w: 404, h: 19 }, //3   //bottom middle building top horizontal wall
        { x: 398, y: 531, w: 472, h: 30 }, //4    //bottom middle building bottom horizontal wall
        { x: 927, y: 397, w: 98, h: 27 }, //5     // bottom staircass
        { x: 734, y: 174, w: 269, h: 18 },  //6     //stair building top horizontal wall
        { x: 863, y: 454, w: 184, h: 38 },  //7     // botttom right building 
        { x: -4, y: -4, w: 1004, h: 11 },  //8      // top of the canvas 
        { x: 0, y: 434, w: 376, h: 13 },  //9      //bottom left building top horizontal wall
        { x: 0, y: 528, w: 400, h: 32 },  //10      // bottom left building bottom horizontal wall
        { x: 378, y: 433, w: 29, h: 127 },  //11     //bottom left building vertical barrier 
        { x: 0, y: 0, w: 1, h: 600 },   //12         //left veritcall edge of the canvas
        { x: 998, y: 0, w: 1, h: 600 } //13       //left veritcall edge of the canvas
        // { x: -14, y: 382, w: 691, h: 49 }

    ];

    //--------------------------------------------------------
    // AUDIO ENGINE
    //--------------------------------------------------------
    game.audioEngine = new AudioEngine({
        sampleUrl: "assets/sounds/moon_instrumental_sample.mp3",
        sliceCount: 8
    });

    const startBtn = document.getElementById("startAudio");
    startBtn.onclick = async () => {
        await game.audioEngine.init();
        if (game.audioEngine.ctx.state === "suspended") {
            await game.audioEngine.ctx.resume();
        }
        startBtn.style.display = "none";
    };

    //--------------------------------------------------------
    // OSC WEBSOCKET
    //--------------------------------------------------------
    game.socket = new WebSocket("ws://localhost:8081");

    game.socket.onopen = () => console.log("✅ Connected to OSC bridge");

    game.socket.onmessage = e => {
        const data = JSON.parse(e.data);

        if (data.address === "/predictpoint" || data.address === "predictpoint") {
            game.poseLabel = data.args[0];

            // Pass barriers so jump-down can work safely
            game.myCharacter.changePose(game.poseLabel, game.barriers);

            game.audioEngine.playSlice(game.poseLabel);
        }
    };
}

//------------------------------------------------------------
// KEY PRESSED — debug toggle
//------------------------------------------------------------
function keyPressed() {
    if (key === 'd' || key === 'D') {
        game.debugMode = !game.debugMode;
        console.log("🔧 Debug Mode:", game.debugMode ? "ON" : "OFF");
    }
}

//------------------------------------------------------------
// Rectangle collision test
//------------------------------------------------------------
function isColliding(rect, b) {
    return (
        rect.x < b.x + b.w &&
        rect.x + rect.width > b.x &&
        rect.y < b.y + b.h &&
        rect.y + rect.height > b.y
    );
}

//------------------------------------------------------------
// p5.js DRAW LOOP
//------------------------------------------------------------
function draw() {
    background(100);

    // Save previous position
    const prevX = game.myCharacter.x;
    const prevY = game.myCharacter.y;

    // Update movement animation
    game.myCharacter.update(game.poseLabel, game.barriers);

    // Collision rollback
    const hitbox = game.myCharacter.getCollisionBox();
    for (let b of game.barriers) {
        if (isColliding(hitbox, b)) {
            game.myCharacter.x = prevX;
            game.myCharacter.y = prevY;
        }
    }

    game.myCharacter.display(game.debugMode);

    // Draw debug barriers
    if (game.debugMode) {
        noFill();
        stroke(255, 0, 0);
        for (let b of game.barriers) rect(b.x, b.y, b.w, b.h);
    }

    // Canvas border
    noFill();
    stroke(100);
    rect(0, 0, width, height);

    // Audio position update
    game.audioEngine.updateFromCharacter(
        game.myCharacter.x / width,
        game.myCharacter.y / height
    );
}

//------------------------------------------------------------
// DRAWING BARRIERS IN DEBUG MODE
//------------------------------------------------------------
function mousePressed() {
    if (!game.debugMode) return;

    game.placingBarrier = { x: mouseX, y: mouseY, w: 0, h: 0 };
    game.barriers.push(game.placingBarrier);
}

function mouseDragged() {
    if (game.placingBarrier) {
        game.placingBarrier.w = mouseX - game.placingBarrier.x;
        game.placingBarrier.h = mouseY - game.placingBarrier.y;
    }
}

function mouseReleased() {
    if (game.placingBarrier) {
        console.log("Barrier added:", game.placingBarrier);
        game.placingBarrier = null;
    }
}
