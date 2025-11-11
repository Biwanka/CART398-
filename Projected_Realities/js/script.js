
"use strict";


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

let video, poseNet, poses = [];
let currentPoseLabel = "idle"; // received from Max
let myCharacter;
let gameScene;

function setup() {
    createCanvas(800, 500);
    video = createCapture(VIDEO);
    //use the code in the green when i connect a webcame, therefore it will use the camera
    //of the webcame and not the cimputer one from the browser
    // video = createCapture({ video: { deviceId: "your_camera_id" } });

    video.size(width, height);
    video.hide();

    // Initialize OSC connection
    setupOSC();

    // Initialize PoseNet
    poseNet = ml5.poseNet(video, modelReady);
    poseNet.on("pose", gotPoses);

    // Initialize GameScene and Character
    gameScene = new GameScene();
    myCharacter = new Character(width / 2, height - 100);
}

function modelReady() {
    console.log("✅ PoseNet model loaded!");
}

function gotPoses(results) {
    poses = results;
    console.log("Detected poses:", poses.length);

    if (poses.length > 0) {
        let pose = poses[0].pose;
        let nose = pose.keypoints.find(p => p.part === "nose");
        let leftWrist = pose.keypoints.find(p => p.part === "leftWrist");
        let rightWrist = pose.keypoints.find(p => p.part === "rightWrist");

        if (nose && leftWrist && rightWrist) {
            let inputData = [
                nose.position.x / width,
                nose.position.y / height,
                leftWrist.position.x / width,
                leftWrist.position.y / height,
                rightWrist.position.x / width,
                rightWrist.position.y / height
            ];

            sendPoseDataToMax(inputData);
        }
    }
}

function draw() {
    background(20, 20, 50);
    image(video, 0, 0, width, height);
    gameScene.display();

    drawKeypoints();
    drawSkeleton();


    // Update and draw character
    myCharacter.update(currentPoseLabel);
    myCharacter.display();
}

// Called when Max sends back a pose classification
function onPoseLabelReceived(label) {
    currentPoseLabel = label;
    myCharacter.changeAnimation(label);
}

//------------------------------------------------------------
// Visualize PoseNet keypoints + skeleton
//------------------------------------------------------------
function drawKeypoints() {
    for (let i = 0; i < poses.length; i++) {
        const pose = poses[i].pose;
        for (let j = 0; j < pose.keypoints.length; j++) {
            const keypoint = pose.keypoints[j];
            if (keypoint.score > 0.3) {
                fill(255, 150, 200);
                noStroke();
                ellipse(keypoint.position.x, keypoint.position.y, 10, 10);
            }
        }
    }
}

function drawSkeleton() {
    for (let i = 0; i < poses.length; i++) {
        const skeleton = poses[i].skeleton;
        for (let j = 0; j < skeleton.length; j++) {
            const partA = skeleton[j][0];
            const partB = skeleton[j][1];
            stroke(255, 100, 200);
            line(partA.position.x, partA.position.y, partB.position.x, partB.position.y);
        }
    }
}


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






















