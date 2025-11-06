
"use strict";

/*
-----------------------------------------------------
PROJECTED REALITIES — PoseNet base setup
Author: Bianca Gauthier
-----------------------------------------------------
This script:
1. Loads the webcam feed
2. Uses ml5.js PoseNet to detect poses
3. Visualizes them on canvas
4. Prepares data for OSC / Wekinator integration
-----------------------------------------------------
*/

// --- Global variables ---
let video;
let poseNet;
let poses = [];

// --- Setup (runs once at start) ---
function setup() {
    // Create a canvas (match roughly your projection area ratio)
    createCanvas(800, 500);

    // Access webcam
    video = createCapture(VIDEO);
    video.size(width, height);
    video.hide(); // Hide raw webcam feed (optional)

    // Load PoseNet model
    poseNet = ml5.poseNet(video, modelReady);

    // Listen for poses
    poseNet.on("pose", gotPoses);

    textAlign(CENTER);
    textSize(16);
    console.log("Setup complete — waiting for PoseNet model...");
}

// --- PoseNet callback when ready ---
function modelReady() {
    console.log("✅ PoseNet model loaded!");
}

// --- When PoseNet finds poses, this function is called ---
function gotPoses(results) {
    poses = results;
    if (poses.length > 0) {
        // Take first detected person
        let pose = poses[0].pose;

        // You can print this to explore what info PoseNet gives:
        // console.log(pose);

        // Example: Extract nose and wrists for simple body tracking
        let nose = pose.keypoints.find(p => p.part === "nose");
        let leftWrist = pose.keypoints.find(p => p.part === "leftWrist");
        let rightWrist = pose.keypoints.find(p => p.part === "rightWrist");

        // Example output (to later send to Wekinator)
        if (nose && leftWrist && rightWrist) {
            let inputData = [
                nose.position.x / width,   // normalized x
                nose.position.y / height,  // normalized y
                leftWrist.position.x / width,
                leftWrist.position.y / height,
                rightWrist.position.x / width,
                rightWrist.position.y / height
            ];

            // Print to console to see values (replace with OSC send later)
            console.log("Pose data:", inputData);
        }
    }
}

// --- Draw loop (runs continuously) ---
function draw() {
    background(30, 30, 60, 100); // Soft bluish tone
    image(video, 0, 0, width, height);

    // Draw detected keypoints + skeleton
    drawKeypoints();
    drawSkeleton();

    // Optional: text overlay
    fill(255);
    noStroke();
    text("PoseNet active — move to see detection", width / 2, height - 20);
}

// --- Draw keypoints (joints) ---
function drawKeypoints() {
    for (let i = 0; i < poses.length; i++) {
        let pose = poses[i].pose;
        for (let j = 0; j < pose.keypoints.length; j++) {
            let keypoint = pose.keypoints[j];
            if (keypoint.score > 0.3) {
                fill(255, 150, 200);
                noStroke();
                ellipse(keypoint.position.x, keypoint.position.y, 10, 10);
            }
        }
    }
}

// --- Draw skeleton (lines connecting joints) ---
function drawSkeleton() {
    for (let i = 0; i < poses.length; i++) {
        let skeleton = poses[i].skeleton;
        for (let j = 0; j < skeleton.length; j++) {
            let partA = skeleton[j][0];
            let partB = skeleton[j][1];
            stroke(255, 100, 200);
            line(partA.position.x, partA.position.y, partB.position.x, partB.position.y);
        }
    }
}






















