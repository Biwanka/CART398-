


// From	         To	        Port	         Message	        Purpose
// p5.js	    Node	8081(WebSocket)     /poseData	     Pose coordinates
// Node	        Max	       9129(UDP)        /poseData	     Forward pose info
// Max	        Node	   9130(UDP)      /poseLabel label	 Pose classification
// Node	       p5.js	8081(WebSocket)   /poseLabel label	 Character animation


/*
----------------------------------------------------------
PROJECTED REALITIES — PoseNet with OSC output
Author: Bianca Gauthier

Description:
Detects user poses using ml5.js PoseNet.
Sends normalized body data to Node.js (via WebSocket),
which relays it to Max via OSC.
----------------------------------------------------------
*/

// script.js
// ---------------------------------------------
// Main setup for Projected Realities
// PoseNet detection + connection with Max/MSP
// ---------------------------------------------
// ---------------------------------------------
// Projected Realities — PoseNet + MediaPipe Hands + OSC
// ---------------------------------------------
// ---------------------------------------------
// Projected Realities — PoseNet + MediaPipe Hands + OSC
// ---------------------------------------------
// script.js — Projected Realities
// PoseNet + MediaPipe Hands + OSC to Max/MSP

// -------------------------------
// FULL SCRIPT: PoseNet + Mediapipe Hands + OSC
// -------------------------------


"use strict";

let video;
let poseNet;
let poses = [];

let handposeModel;
let hands = [];

let oscSocket;

let cameraYOffset = -100; // initial camera offset
let slider; // slider to control camera height

// -------------------------------  
function setup() {
    createCanvas(1280, 720);

    // Slider for camera offset
    slider = createSlider(-300, 300, cameraYOffset, 1);
    slider.position(20, height + 10);
    slider.style('width', '200px');

    // Webcam
    video = createCapture({
        video: { width: 1280, height: 720, facingMode: "user" }
    });
    video.size(width, height);
    video.hide();

    // PoseNet
    poseNet = ml5.poseNet(video, () => console.log("✅ PoseNet loaded"));
    poseNet.on("pose", gotPoses);

    // Mediapipe Hands
    handposeModel = ml5.handpose(video, () => console.log("✅ Mediapipe Hands ready"));
    handposeModel.on("predict", results => {
        hands = results;
    });

    // OSC WebSocket
    setupWebSocket();
}

function setupWebSocket() {
    oscSocket = new WebSocket("ws://localhost:8081");
    oscSocket.onopen = () => console.log("✅ Connected to OSC bridge");
    oscSocket.onerror = (err) => console.error("❌ WebSocket error:", err);
}

// -------------------------------  
function gotPoses(results) {
    poses = results;
}

// -------------------------------  
function sendDataToMax() {
    if (!oscSocket || oscSocket.readyState !== WebSocket.OPEN) return;

    const data = [];

    // PoseNet: nose + wrists + shoulders
    if (poses.length > 0) {
        const pose = poses[0].pose;
        const nose = pose.keypoints.find(p => p.part === "nose");
        const leftWrist = pose.keypoints.find(p => p.part === "leftWrist");
        const rightWrist = pose.keypoints.find(p => p.part === "rightWrist");
        const leftShoulder = pose.keypoints.find(p => p.part === "leftShoulder");
        const rightShoulder = pose.keypoints.find(p => p.part === "rightShoulder");

        if (nose && leftWrist && rightWrist && leftShoulder && rightShoulder) {
            data.push(
                nose.position.x / width, nose.position.y / height,
                leftWrist.position.x / width, leftWrist.position.y / height,
                rightWrist.position.x / width, rightWrist.position.y / height,
                leftShoulder.position.x / width, leftShoulder.position.y / height,
                rightShoulder.position.x / width, rightShoulder.position.y / height
            );
        } else data.push(...Array(10).fill(0));
    } else data.push(...Array(10).fill(0));

    // Hands: first hand only
    if (hands.length > 0) {
        const hand = hands[0];
        // landmarks array: 21 points × 2 = 42 floats
        for (const [x, y] of hand.landmarks) {
            data.push(x / width, y / height);
        }
    } else data.push(...Array(42).fill(0));

    const msg = {
        address: "/poseHandData",
        args: data.map(v => ({ type: "f", value: v }))
    };
    oscSocket.send(JSON.stringify(msg));
}

// -------------------------------  
function draw() {
    background(20);

    cameraYOffset = slider.value(); // update offset

    // mirrored video with y-offset
    push();
    translate(width, cameraYOffset);
    scale(-1, 1);
    image(video, 0, 0, width, height);
    pop();

    drawPose();
    drawHands();

    sendDataToMax();

    // display slider value
    fill(255);
    noStroke();
    textSize(16);
    text(`Camera Offset: ${cameraYOffset}`, 240, height + 35);
}

// -------------------------------  
function drawPose() {
    for (let i = 0; i < poses.length; i++) {
        const pose = poses[i].pose;

        for (let j = 0; j < pose.keypoints.length; j++) {
            const keypoint = pose.keypoints[j];
            if (keypoint.score > 0.3) {
                fill(255, 150, 200);
                noStroke();
                ellipse(width - keypoint.position.x, keypoint.position.y + cameraYOffset, 10);
            }
        }

        for (let j = 0; j < poses[i].skeleton.length; j++) {
            const [partA, partB] = poses[i].skeleton[j];
            stroke(255, 100, 200);
            line(
                width - partA.position.x, partA.position.y + cameraYOffset,
                width - partB.position.x, partB.position.y + cameraYOffset
            );
        }
    }
}

// -------------------------------  
function drawHands() {
    // Reset hands if off-screen
    if (!hands || hands.length === 0) return;

    for (const hand of hands) {
        for (const [x, y] of hand.landmarks) {
            fill(0, 255, 0);
            noStroke();
            ellipse(width - x, y + cameraYOffset, 10);
        }
    }
}


























// let video;
// let poseNet;
// let poses = [];

// let handposeModel;
// let hands = [];

// let oscSocket;

// let cameraYOffset = -100; // initial camera offset
// let slider; // slider to control camera height

// // -------------------------------
// function setup() {
//     createCanvas(1280, 720);

//     // create slider: range -300 to 300
//     slider = createSlider(-300, 300, cameraYOffset, 1);
//     slider.position(20, height + 10);
//     slider.style('width', '200px');

//     video = createCapture({
//         video: { width: 1280, height: 720, facingMode: "user" }
//     });
//     video.size(width, height);
//     video.hide();

//     // PoseNet
//     poseNet = ml5.poseNet(video, () => console.log("✅ PoseNet loaded"));
//     poseNet.on("pose", gotPoses);

//     // Mediapipe Hands
//     handposeModel = ml5.handpose(video, () => console.log("✅ Mediapipe Hands ready"));
//     handposeModel.on("predict", results => hands = results);

//     // OSC
//     setupWebSocket();
// }

// function setupWebSocket() {
//     oscSocket = new WebSocket("ws://localhost:8081");
//     oscSocket.onopen = () => console.log("✅ Connected to OSC bridge");
//     oscSocket.onerror = (err) => console.error("❌ WebSocket error:", err);
// }

// // -------------------------------
// function gotPoses(results) {
//     poses = results;
// }

// // -------------------------------
// function sendDataToMax() {
//     if (!oscSocket || oscSocket.readyState !== WebSocket.OPEN) return;

//     const data = [];

//     // PoseNet: nose + wrists
//     if (poses.length > 0) {
//         const pose = poses[0].pose;
//         const nose = pose.keypoints.find(p => p.part === "nose");
//         const leftWrist = pose.keypoints.find(p => p.part === "leftWrist");
//         const rightWrist = pose.keypoints.find(p => p.part === "rightWrist");

//         if (nose && leftWrist && rightWrist) {
//             data.push(
//                 nose.position.x / width, nose.position.y / height,
//                 leftWrist.position.x / width, leftWrist.position.y / height,
//                 rightWrist.position.x / width, rightWrist.position.y / height
//             );
//         } else data.push(...Array(6).fill(0));
//     } else data.push(...Array(6).fill(0));

//     // Hands: first hand only
//     if (hands.length > 0) {
//         const hand = hands[0];
//         for (const [x, y] of hand.landmarks) {
//             data.push(x / width, y / height);
//         }
//     } else data.push(...Array(42).fill(0));

//     const msg = {
//         address: "/poseHandData",
//         args: data.map(v => ({ type: "f", value: v }))
//     };
//     oscSocket.send(JSON.stringify(msg));
// }

// // -------------------------------
// function draw() {
//     background(20);

//     cameraYOffset = slider.value(); // update offset from slider

//     // draw mirrored video with y-offset
//     push();
//     translate(width, cameraYOffset);
//     scale(-1, 1); // horizontal mirror
//     image(video, 0, 0, width, height);
//     pop();

//     drawPose();
//     drawHands();

//     sendDataToMax();

//     // display slider value
//     fill(255);
//     noStroke();
//     textSize(16);
//     text(`Camera Offset: ${cameraYOffset}`, 240, height + 35);
// }

// // -------------------------------
// function drawPose() {
//     for (let i = 0; i < poses.length; i++) {
//         const pose = poses[i].pose;

//         for (let j = 0; j < pose.keypoints.length; j++) {
//             const keypoint = pose.keypoints[j];
//             if (keypoint.score > 0.3) {
//                 fill(255, 150, 200);
//                 noStroke();
//                 ellipse(width - keypoint.position.x, keypoint.position.y + cameraYOffset, 10);
//             }
//         }

//         for (let j = 0; j < poses[i].skeleton.length; j++) {
//             const [partA, partB] = poses[i].skeleton[j];
//             stroke(255, 100, 200);
//             line(
//                 width - partA.position.x, partA.position.y + cameraYOffset,
//                 width - partB.position.x, partB.position.y + cameraYOffset
//             );
//         }
//     }
// }

// // -------------------------------
// function drawHands() {
//     for (const hand of hands) {
//         for (const [x, y] of hand.landmarks) {
//             fill(0, 255, 0);
//             noStroke();
//             ellipse(width - x, y + cameraYOffset, 10);
//         }
//     }
// }



























































// let video;
// let poseNet;
// let poses = [];

// let handposeModel;
// let hands = [];

// let oscSocket;

// // -------------------------------
// // SETUP
// // -------------------------------
// function setup() {
//     // Canvas (match webcam aspect ratio for better visuals)
//     createCanvas(1280, 720);

//     // Webcam capture
//     video = createCapture({
//         video: {
//             width: 1280,
//             height: 720
//         }
//     });
//     video.size(width, height);
//     video.hide();

//     // -------------------------------
//     // PoseNet
//     // -------------------------------
//     poseNet = ml5.poseNet(video, () => console.log("✅ PoseNet loaded"));
//     poseNet.on("pose", gotPoses);

//     // -------------------------------
//     // Mediapipe Hands
//     // -------------------------------
//     handposeModel = ml5.handpose(video, () => console.log("✅ Mediapipe Hands ready"));
//     handposeModel.on("predict", results => {
//         hands = results;
//         if (hands.length > 0) sendHandDataToMax(hands[0]); // send first hand only
//     });

//     // -------------------------------
//     // OSC WebSocket
//     // -------------------------------
//     setupWebSocket();
// }

// // -------------------------------
// // WEBSOCKET SETUP
// // -------------------------------
// function setupWebSocket() {
//     oscSocket = new WebSocket("ws://localhost:8081");
//     oscSocket.onopen = () => console.log("✅ Connected to OSC bridge");
//     oscSocket.onerror = (err) => console.error("❌ WebSocket error:", err);
// }

// // -------------------------------
// // POSE HANDLING
// // -------------------------------
// function gotPoses(results) {
//     poses = results;

//     if (poses.length > 0) {
//         const pose = poses[0].pose;
//         const nose = pose.keypoints.find(p => p.part === "nose");
//         const leftWrist = pose.keypoints.find(p => p.part === "leftWrist");
//         const rightWrist = pose.keypoints.find(p => p.part === "rightWrist");

//         if (nose && leftWrist && rightWrist) {
//             const poseData = [
//                 nose.position.x / width,
//                 nose.position.y / height,
//                 leftWrist.position.x / width,
//                 leftWrist.position.y / height,
//                 rightWrist.position.x / width,
//                 rightWrist.position.y / height
//             ];

//             sendPoseDataToMax(poseData);
//         }
//     }
// }

// // -------------------------------
// // SEND DATA TO NODE / MAX
// // -------------------------------
// function sendPoseDataToMax(poseArray) {
//     if (!oscSocket || oscSocket.readyState !== WebSocket.OPEN) return;

//     const msg = {
//         address: "/poseData",
//         args: poseArray.map(v => ({ type: "f", value: v }))
//     };

//     oscSocket.send(JSON.stringify(msg));
// }

// function sendHandDataToMax(hand) {
//     if (!oscSocket || oscSocket.readyState !== WebSocket.OPEN) return;

//     // Take all 21 landmarks of the first hand
//     const handData = hand.landmarks.flatMap(pt => [pt[0] / width, pt[1] / height, pt[2]]);

//     const msg = {
//         address: "/handData",
//         args: handData.map(v => ({ type: "f", value: v }))
//     };

//     oscSocket.send(JSON.stringify(msg));
// }

// // -------------------------------
// // MAIN DRAW LOOP
// // -------------------------------
// function draw() {
//     background(20);
//     image(video, 0, 0, width, height);

//     drawPose();
//     drawHands();
// }

// // -------------------------------
// // DRAWING POSE KEYPOINTS & SKELETON
// // -------------------------------
// function drawPose() {
//     for (let i = 0; i < poses.length; i++) {
//         const pose = poses[i].pose;

//         // keypoints
//         for (let j = 0; j < pose.keypoints.length; j++) {
//             const keypoint = pose.keypoints[j];
//             if (keypoint.score > 0.3) {
//                 fill(255, 150, 200);
//                 noStroke();
//                 ellipse(keypoint.position.x, keypoint.position.y, 10, 10);
//             }
//         }

//         // skeleton
//         for (let j = 0; j < poses[i].skeleton.length; j++) {
//             const [partA, partB] = poses[i].skeleton[j];
//             stroke(255, 100, 200);
//             line(partA.position.x, partA.position.y, partB.position.x, partB.position.y);
//         }
//     }
// }

// // -------------------------------
// // DRAWING HANDS
// // -------------------------------
// function drawHands() {
//     for (const hand of hands) {
//         for (const [x, y, z] of hand.landmarks) {
//             fill(0, 255, 0);
//             noStroke();
//             ellipse(x, y, 10);
//         }
//     }
// }



// let video;
// let poseNet;
// let poses = [];
// let handpose;
// let hands = [];

// let oscSocket;

// // ----------------------------------------------------------
// function setup() {
//     createCanvas(800, 500);

//     video = createCapture(VIDEO);
//     video.size(width, height);
//     video.hide();

//     poseNet = ml5.poseNet(video, () => console.log("✅ PoseNet ready"));
//     poseNet.on("pose", (results) => poses = results);

//     handpose = ml5.handpose(video, () => console.log("🖐️ Handpose ready"));
//     handpose.on("predict", (results) => hands = results);

//     setupWebSocket();
// }

// // ----------------------------------------------------------
// function draw() {
//     background(20);
//     image(video, 0, 0, width, height);

//     drawKeypoints();
//     drawSkeleton();
//     drawHandpoints();  // ⭐ NEW

//     const combined = getCombinedPoseData();
//     if (combined.length > 0) {
//         console.log("📤 Sending:", combined);   // ⭐ always shows numbers in browser console
//         sendPoseDataToMax(combined);
//     }
// }

// // ----------------------------------------------------------
// // Build combined vector
// // ----------------------------------------------------------
// function getCombinedPoseData() {
//     let out = [];

//     // ---- Posenet
//     if (poses.length > 0) {
//         const pose = poses[0].pose;

//         const kp = part => pose.keypoints.find(p => p.part === part);

//         const nose = kp("nose");
//         const lw = kp("leftWrist");
//         const rw = kp("rightWrist");

//         if (nose && lw && rw) {
//             out.push(
//                 nose.position.x / width,
//                 nose.position.y / height,
//                 lw.position.x / width,
//                 lw.position.y / height,
//                 rw.position.x / width,
//                 rw.position.y / height,
//             );
//         } else {
//             console.warn("⚠️ Missing PoseNet keypoints");
//         }
//     }

//     // ---- Handpose (21 × 2 floats = 42)
//     if (hands.length > 0) {
//         const hand = hands[0];
//         hand.landmarks.forEach(pt => {
//             out.push(pt[0] / width, pt[1] / height);
//         });
//     } else {
//         console.warn("⚠️ No hands detected");
//     }

//     return out;
// }

// // ----------------------------------------------------------
// // DRAW HAND LANDMARKS
// // ----------------------------------------------------------
// function drawHandpoints() {
//     if (hands.length === 0) return;

//     const hand = hands[0];
//     fill(255, 255, 0);
//     noStroke();

//     hand.landmarks.forEach(pt => {
//         ellipse(pt[0], pt[1], 12, 12);  // ⭐ yellow dots on your hands
//     });
// }

// // ----------------------------------------------------------
// function setupWebSocket() {
//     oscSocket = new WebSocket("ws://localhost:8081");
//     oscSocket.onopen = () => console.log("🌐 Connected to OSC bridge");
//     oscSocket.onerror = err => console.error("❌ WebSocket error:", err);
// }

// // ----------------------------------------------------------
// function sendPoseDataToMax(poseArray) {
//     if (!oscSocket || oscSocket.readyState !== WebSocket.OPEN) return;

//     const msg = {
//         address: "/poseData",
//         args: poseArray.map(v => ({ type: "f", value: v })),
//     };

//     oscSocket.send(JSON.stringify(msg));
// }

// // ----------------------------------------------------------
// function drawKeypoints() {
//     if (poses.length === 0) return;

//     for (const kp of poses[0].pose.keypoints) {
//         if (kp.score > 0.3) {
//             fill(255, 150, 200);
//             noStroke();
//             ellipse(kp.position.x, kp.position.y, 10, 10);
//         }
//     }
// }

// function drawSkeleton() {
//     if (poses.length === 0) return;

//     for (const bone of poses[0].skeleton) {
//         let a = bone[0];
//         let b = bone[1];
//         stroke(255, 100, 200);
//         line(a.position.x, a.position.y, b.position.x, b.position.y);
//     }
// }








































// let video;
// let poseNet;
// let poses = [];
// let oscSocket; // ✅ renamed so it doesn’t conflict with bridge_osc.js

// // ----------------------------------------------------------
// // SETUP
// // ----------------------------------------------------------
// function setup() {
//     createCanvas(800, 500);

//     // Webcam feed
//     video = createCapture(VIDEO);
//     video.size(width, height);
//     video.hide();

//     // PoseNet
//     poseNet = ml5.poseNet(video, modelReady);
//     poseNet.on("pose", gotPoses);

//     // WebSocket (→ Node.js)
//     setupWebSocket();
//     sendPoseDataToMax()

// }

// // ----------------------------------------------------------
// // INIT CONNECTIONS
// // ----------------------------------------------------------
// function modelReady() {
//     console.log("✅ PoseNet loaded and active.");
// }

// function setupWebSocket() {
//     oscSocket = new WebSocket("ws://localhost:8081");
//     oscSocket.onopen = () => console.log("✅ Connected to OSC bridge");
//     oscSocket.onerror = (err) => console.error("❌ WebSocket error:", err);
// }

// // ----------------------------------------------------------
// // MAIN LOOP
// // ----------------------------------------------------------
// function draw() {
//     background(20);
//     image(video, 0, 0, width, height);

//     drawKeypoints();
//     drawSkeleton();
// }

// // ----------------------------------------------------------
// // POSE HANDLING
// // ----------------------------------------------------------
// function gotPoses(results) {
//     poses = results;

//     if (poses.length > 0) {
//         let pose = poses[0].pose;
//         let nose = pose.keypoints.find((p) => p.part === "nose");
//         let leftWrist = pose.keypoints.find((p) => p.part === "leftWrist");
//         let rightWrist = pose.keypoints.find((p) => p.part === "rightWrist");

//         if (nose && leftWrist && rightWrist) {
//             let inputData = [
//                 nose.position.x / width,
//                 nose.position.y / height,
//                 leftWrist.position.x / width,
//                 leftWrist.position.y / height,
//                 rightWrist.position.x / width,
//                 rightWrist.position.y / height,
//             ];

//             console.log("📸 Pose data:", inputData);
//             sendPoseDataToMax(inputData);
//         }
//     }
// }

// // ----------------------------------------------------------
// // SENDING TO NODE
// // ----------------------------------------------------------
// function sendPoseDataToMax(poseArray) {
//     if (!oscSocket || oscSocket.readyState !== WebSocket.OPEN) return;

//     const msg = {
//         address: "/poseData",
//         args: poseArray.map((v) => ({ type: "f", value: v })),
//     };

//     oscSocket.send(JSON.stringify(msg));
// }

// // ----------------------------------------------------------
// // DRAW VISUALS
// // ----------------------------------------------------------
// function drawKeypoints() {
//     for (let i = 0; i < poses.length; i++) {
//         const pose = poses[i].pose;
//         for (let j = 0; j < pose.keypoints.length; j++) {
//             const keypoint = pose.keypoints[j];
//             if (keypoint.score > 0.3) {
//                 fill(255, 150, 200);
//                 noStroke();
//                 ellipse(keypoint.position.x, keypoint.position.y, 10, 10);
//             }
//         }
//     }
// }

// function drawSkeleton() {
//     for (let i = 0; i < poses.length; i++) {
//         const skeleton = poses[i].skeleton;
//         for (let j = 0; j < skeleton.length; j++) {
//             const partA = skeleton[j][0];
//             const partB = skeleton[j][1];
//             stroke(255, 100, 200);
//             line(partA.position.x, partA.position.y, partB.position.x, partB.position.y);
//         }
//     }
// }





// import { setupOSC, sendPoseDataToMax } from "./bridge_osc.js";
// import { Character } from "./Character.js";

// let video, poseNet, poses = [];
// let currentPoseLabel = "idle";
// let myCharacter;
// let animations = {};

// // ----------------------------------------------------------
// function preload() {
//     // Load character frames
//     animations["idle"] = [loadImage("assets/idle1.png")];
//     animations["walk_left"] = [
//         loadImage("assets/walk_left1.png"),
//         loadImage("assets/walk_left2.png"),
//         loadImage("assets/walk_left3.png"),
//     ];
//     animations["walk_right"] = [
//         loadImage("assets/walk_right1.png"),
//         loadImage("assets/walk_right2.png"),
//         loadImage("assets/walk_right3.png"),
//     ];
//     animations["walk_front"] = [
//         loadImage("assets/walk_front1.png"),
//         loadImage("assets/walk_front2.png"),
//         loadImage("assets/walk_front3.png"),
//     ];
//     animations["walk_back"] = [
//         loadImage("assets/walk_back1.png"),
//         loadImage("assets/walk_back2.png"),
//         loadImage("assets/walk_back3.png"),
//     ];
//     animations["jump"] = [loadImage("assets/jump.png")];
//     animations["crouch"] = [loadImage("assets/crouch.png")];
//     animations["climb"] = [loadImage("assets/climb.png")];
// }

// // ----------------------------------------------------------
// function setup() {
//     createCanvas(800, 600);
//     video = createCapture(VIDEO);
//     video.size(width, height);
//     video.hide();

//     setupOSC();

//     poseNet = ml5.poseNet(video, () => console.log("✅ PoseNet model loaded"));
//     poseNet.on("pose", gotPoses);

//     myCharacter = new Character(width / 2, height - 150, animations);

//     // Listen for classification labels from Max
//     window.addEventListener("poseLabelReceived", (e) => {
//         currentPoseLabel = e.detail;
//         myCharacter.changePose(e.detail);
//     });
// }

// // ----------------------------------------------------------
// function gotPoses(results) {
//     poses = results;
//     if (poses.length > 0) {
//         let pose = poses[0].pose;
//         let nose = pose.keypoints.find((p) => p.part === "nose");
//         let lw = pose.keypoints.find((p) => p.part === "leftWrist");
//         let rw = pose.keypoints.find((p) => p.part === "rightWrist");

//         if (nose && lw && rw) {
//             let inputData = [
//                 nose.position.x / width,
//                 nose.position.y / height,
//                 lw.position.x / width,
//                 lw.position.y / height,
//                 rw.position.x / width,
//                 rw.position.y / height,
//             ];
//             sendPoseDataToMax(inputData);
//         }
//     }
// }

// // ----------------------------------------------------------
// function draw() {
//     background(20);
//     image(video, 0, 0, width, height);

//     drawKeypoints();
//     drawSkeleton();

//     myCharacter.update();
//     myCharacter.display(this);
// }

// // ----------------------------------------------------------
// function drawKeypoints() {
//     for (let i = 0; i < poses.length; i++) {
//         const pose = poses[i].pose;
//         for (let j = 0; j < pose.keypoints.length; j++) {
//             const keypoint = pose.keypoints[j];
//             if (keypoint.score > 0.3) {
//                 fill(255, 150, 200);
//                 noStroke();
//                 ellipse(keypoint.position.x, keypoint.position.y, 10, 10);
//             }
//         }
//     }
// }

// function drawSkeleton() {
//     for (let i = 0; i < poses.length; i++) {
//         const skeleton = poses[i].skeleton;
//         for (let j = 0; j < skeleton.length; j++) {
//             const partA = skeleton[j][0];
//             const partB = skeleton[j][1];
//             stroke(255, 100, 200);
//             line(partA.position.x, partA.position.y, partB.position.x, partB.position.y);
//         }
//     }
// }


















// let video, poseNet, poses = [];
// let currentPoseLabel = "idle"; // received from Max
// let myCharacter;
// let gameScene;

// import { setupOSC } from "./bridge_osc.js";
// import { Character } from "./Character.js";

// let character;
// let animations = {};

// function preload() {
//     // Example: load 3 frames per animation
//     animations["idle"] = [
//         loadImage("assets/idle1.png"),
//     ];

//     animations["walk_left"] = [
//         loadImage("assets/walk_left1.png"),
//         loadImage("assets/walk_left2.png"),
//         loadImage("assets/walk_left3.png")
//     ];

//     animations["walk_right"] = [
//         loadImage("assets/walk_right1.png"),
//         loadImage("assets/walk_right2.png"),
//         loadImage("assets/walk_right3.png")
//     ];

//     animations["walk_front"] = [
//         loadImage("assets/walk_front1.png"),
//         loadImage("assets/walk_front2.png"),
//         loadImage("assets/walk_front3.png")
//     ];

//     animations["walk_back"] = [
//         loadImage("assets/walk_back1.png"),
//         loadImage("assets/walk_back2.png"),
//         loadImage("assets/walk_back3.png")
//     ];

//     // Optional poses:
//     animations["jump"] = [loadImage("assets/jump.png")];
//     animations["crouch"] = [loadImage("assets/crouch.png")];
//     animations["climb"] = [loadImage("assets/climb.png")];
// }

// function setup() {
//     createCanvas(800, 600);
//     setupOSC();
//     character = new Character(width / 2, height / 2, animations);
// }

// function draw() {
//     background(220);
//     character.update();
//     character.display(this);
// }


// function setup() {
//     createCanvas(800, 500);
//     video = createCapture(VIDEO);
//     //use the code in the green when i connect a webcame, therefore it will use the camera
//     //of the webcame and not the cimputer one from the browser
//     // video = createCapture({ video: { deviceId: "your_camera_id" } });

//     video.size(width, height);
//     video.hide();

//     // Initialize OSC connection
//     setupOSC();

//     // Initialize PoseNet
//     poseNet = ml5.poseNet(video, modelReady);
//     poseNet.on("pose", gotPoses);

//     // Initialize GameScene and Character
//     gameScene = new GameScene();
//     myCharacter = new Character(width / 2, height - 100);
// }

// function modelReady() {
//     console.log("✅ PoseNet model loaded!");
// }

// function gotPoses(results) {
//     poses = results;
//     console.log("Detected poses:", poses.length);

//     if (poses.length > 0) {
//         let pose = poses[0].pose;
//         let nose = pose.keypoints.find(p => p.part === "nose");
//         let leftWrist = pose.keypoints.find(p => p.part === "leftWrist");
//         let rightWrist = pose.keypoints.find(p => p.part === "rightWrist");

//         if (nose && leftWrist && rightWrist) {
//             let inputData = [
//                 nose.position.x / width,
//                 nose.position.y / height,
//                 leftWrist.position.x / width,
//                 leftWrist.position.y / height,
//                 rightWrist.position.x / width,
//                 rightWrist.position.y / height
//             ];

//             sendPoseDataToMax(inputData);
//         }
//     }
// }

// function draw() {
//     background(20, 20, 50);
//     image(video, 0, 0, width, height);
//     gameScene.display();

//     drawKeypoints();
//     drawSkeleton();


//     // Update and draw character
//     myCharacter.update(currentPoseLabel);
//     myCharacter.display();
// }

// // Called when Max sends back a pose classification
// function onPoseLabelReceived(label) {
//     currentPoseLabel = label;
//     myCharacter.changeAnimation(label);
// }

// //------------------------------------------------------------
// // Visualize PoseNet keypoints + skeleton
// //------------------------------------------------------------
// function drawKeypoints() {
//     for (let i = 0; i < poses.length; i++) {
//         const pose = poses[i].pose;
//         for (let j = 0; j < pose.keypoints.length; j++) {
//             const keypoint = pose.keypoints[j];
//             if (keypoint.score > 0.3) {
//                 fill(255, 150, 200);
//                 noStroke();
//                 ellipse(keypoint.position.x, keypoint.position.y, 10, 10);
//             }
//         }
//     }
// }

// function drawSkeleton() {
//     for (let i = 0; i < poses.length; i++) {
//         const skeleton = poses[i].skeleton;
//         for (let j = 0; j < skeleton.length; j++) {
//             const partA = skeleton[j][0];
//             const partB = skeleton[j][1];
//             stroke(255, 100, 200);
//             line(partA.position.x, partA.position.y, partB.position.x, partB.position.y);
//         }
//     }
// }



















// /*
// -----------------------------------------------------
// PROJECTED REALITIES — PoseNet base setup
// Author: Bianca Gauthier
// -----------------------------------------------------
// This script:
// 1. Loads the webcam feed
// 2. Uses ml5.js PoseNet to detect poses
// 3. Visualizes them on canvas
// 4. Prepares data for OSC / Wekinator integration
// -----------------------------------------------------
// */

// // --- Global variables ---
// let video;
// let poseNet;
// let poses = [];
// // let hands = [];


// // --- Setup (runs once at start) ---
// function setup() {
//     // Create a canvas (match roughly your projection area ratio)
//     createCanvas(800, 500);

//     // Access webcam
//     video = createCapture(video);
//     video.size(800, 500);
//     //video.size(width, height);  
//     video.hide(); // Hide raw webcam feed (optional)

//     // Load PoseNet model
//     poseNet = ml5.poseNet(video, modelReady);
//     // Listen for poses
//     poseNet.on("pose", gotPoses);

//     // //Load Handpose
//     // handpose = ml5.handpose(video, modelReadyHandPose);
//     // handpose.on("predict", gothands);


//     textAlign(CENTER);
//     textSize(16);
//     console.log("Setup complete — waiting for PoseNet model...");
// }
// // Smoothing factor (0 = no smoothing, 1 = full smoothing)
// let smooth = 0.7;
// let smoothedPose = {};

// function smoothPoint(name, newX, newY) {
//     if (!smoothedPose[name]) {
//         smoothedPose[name] = { x: newX, y: newY };
//     } else {
//         smoothedPose[name].x = lerp(smoothedPose[name].x, newX, smooth);
//         smoothedPose[name].y = lerp(smoothedPose[name].y, newY, smooth);
//     }
//     return smoothedPose[name];
// }

// // --- PoseNet callback when ready ---
// function modelReady() {
//     console.log("✅ PoseNet model loaded!");
// }

// // function modelReadyHandpose() {
// //     console.log("🖐️ Handpose model loaded!");
// // }

// // ---CALLBACKS--- //
// // --- When PoseNet finds poses, this function is called ---
// function gotPoses(results) {
//     poses = results;
//     if (poses.length > 0) {
//         // Take first detected person
//         let pose = poses[0].pose;

//         // function gotHands(results) {
//         //     hands = results;
//         // }

//         // You can print this to explore what info PoseNet gives:
//         // console.log(pose);

//         // Example: Extract nose and wrists for simple body tracking
//         let nose = pose.keypoints.find(p => p.part === "nose");
//         let leftWrist = pose.keypoints.find(p => p.part === "leftWrist");
//         let rightWrist = pose.keypoints.find(p => p.part === "rightWrist");

//         // Example output (to later send to Wekinator)
//         if (nose && leftWrist && rightWrist) {
//             let inputData = [
//                 nose.position.x / width,   // normalized x
//                 nose.position.y / height,  // normalized y
//                 leftWrist.position.x / width,
//                 leftWrist.position.y / height,
//                 rightWrist.position.x / width,
//                 rightWrist.position.y / height
//             ];

//             // Print to console to see values (replace with OSC send later)
//             console.log("Pose data:", inputData);
//         }
//     }
// }

// // --- Draw loop (runs continuously) ---
// function draw() {
//     background(30, 30, 60, 100); // Soft bluish tone
//     image(video, 0, 0, width, height);

//     // Draw detected keypoints + skeleton

//     drawSkeleton();
//     drawKeypoints();
//     // drawHands();

//     // Optional: text overlay
//     fill(255);
//     noStroke();
//     text("PoseNet + Handpose active", width / 2, height - 20);
// }

// // --- Draw keypoints (joints) ---
// function drawKeypoints() {
//     for (let i = 0; i < poses.length; i++) {
//         let pose = poses[i].pose;
//         for (let j = 0; j < pose.keypoints.length; j++) {
//             let keypoint = pose.keypoints[j];
//             if (keypoint.score > 0.3) {
//                 fill(255, 150, 200);
//                 noStroke();
//                 ellipse(keypoint.position.x, keypoint.position.y, 10, 10);
//             }
//         }
//     }
// }

// // --- Draw skeleton (lines connecting joints) ---
// function drawSkeleton() {
//     for (let i = 0; i < poses.length; i++) {
//         let skeleton = poses[i].skeleton;
//         for (let j = 0; j < skeleton.length; j++) {
//             let partA = skeleton[j][0];
//             let partB = skeleton[j][1];
//             stroke(255, 100, 200);
//             line(partA.position.x, partA.position.y, partB.position.x, partB.position.y);
//         }
//     }
// }

// // // Hands //

// // function drawHands() {
// //     for (let i = 0; i < hand.leght; i++) {
// //         const hand = hands[i];
// //         const landmarks = hand.landmarks;
// //         for (let j = 0; j < landmarks.lenght; j++) {
// //             const [x, y, z] = landmarks[j];

// //             fill(0, 255, 255);
// //             noStroke();
// //             ellipse(x, y, 8, 8)
// //                 ;
// //         }
// //     }

// // }






















