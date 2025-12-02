


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

const VIDEO_WIDTH = 1280;
const VIDEO_HEIGHT = 720;
const INFERENCE_FPS = 15; // process ~15 times per second
let lastInference = 0;

// -------------------------------
function setup() {
    createCanvas(VIDEO_WIDTH, VIDEO_HEIGHT);

    // Webcam
    video = createCapture({
        video: { width: VIDEO_WIDTH, height: VIDEO_HEIGHT, facingMode: "user" }
    });
    video.size(VIDEO_WIDTH, VIDEO_HEIGHT);
    video.hide();

    // PoseNet
    poseNet = ml5.poseNet(video, () => console.log("✅ PoseNet loaded"));
    poseNet.on("pose", results => poses = results);

    // Mediapipe Hands
    handposeModel = ml5.handpose(video, () => console.log("✅ Mediapipe Hands ready"));
    handposeModel.on("predict", results => hands = results);

    // OSC WebSocket
    setupWebSocket();
}

function setupWebSocket() {
    oscSocket = new WebSocket("ws://localhost:8081");
    oscSocket.onopen = () => console.log("✅ Connected to OSC bridge");
    oscSocket.onerror = (err) => console.error("❌ WebSocket error:", err);
}

// -------------------------------
function sendDataToMax() {
    if (!oscSocket || oscSocket.readyState !== WebSocket.OPEN) return;

    const data = [];

    // PoseNet: nose + wrists + shoulders
    if (poses.length > 0) {
        const pose = poses[0].pose;
        const keypoints = ["nose", "leftWrist", "rightWrist", "leftShoulder", "rightShoulder"];
        keypoints.forEach(part => {
            const kp = pose.keypoints.find(p => p.part === part);
            if (kp) data.push(kp.position.x / VIDEO_WIDTH, kp.position.y / VIDEO_HEIGHT);
            else data.push(0, 0);
        });
    } else data.push(...Array(10).fill(0));

    // Hands: first hand only
    if (hands.length > 0) {
        const hand = hands[0];
        for (const [x, y] of hand.landmarks) {
            data.push(x / VIDEO_WIDTH, y / VIDEO_HEIGHT);
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

    // Draw mirrored video
    push();
    translate(width, 0);
    scale(-1, 1);
    image(video, 0, 0, width, height);
    pop();

    drawPose();
    drawHands();

    // Limit inference to INFERENCE_FPS
    if (millis() - lastInference > 1000 / INFERENCE_FPS) {
        sendDataToMax();
        lastInference = millis();
    }
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
                ellipse(width - keypoint.position.x, keypoint.position.y, 10);
            }
        }

        for (let j = 0; j < poses[i].skeleton.length; j++) {
            const [partA, partB] = poses[i].skeleton[j];
            stroke(255, 100, 200);
            line(
                width - partA.position.x, partA.position.y,
                width - partB.position.x, partB.position.y
            );
        }
    }
}

// -------------------------------
function drawHands() {
    if (!hands || hands.length === 0) return;

    for (const hand of hands) {
        for (const [x, y] of hand.landmarks) {
            fill(0, 255, 0);
            noStroke();
            ellipse(width - x, y, 10);
        }
    }
}















