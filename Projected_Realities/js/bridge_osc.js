// /*
// ----------------------------------------------------------
// PROJECTED REALITIES — OSC Bridge (p5.js → Max)
// Author: Bianca Gauthier

// Description:
// This Node.js script acts as a bridge between your PoseNet sketch
// running in the browser and Max (for sound or FluCoMa processing).

// It uses osc-js to:
// 1. Open a WebSocket server on port 8081 (for p5.js).
// 2. Send OSC data via UDP to Max on port 6448/

// bridge_osc.js
// Handles WebSocket connection to Node OSC bridge (server_osc.js)

let socket; // global WebSocket object

function setupOSC() {
    socket = new WebSocket("ws://localhost:8081");

    socket.onopen = () => console.log("✅ WebSocket connected — ready to send OSC to Max");
    socket.onerror = (err) => console.error("❌ WebSocket error:", err);
    socket.onmessage = (event) => handleOSCMessage(JSON.parse(event.data));
}

// Send pose data to Max via OSC bridge
function sendPoseDataToMax(poseArray) {
    if (!socket || socket.readyState !== WebSocket.OPEN) return;
    socket.send(JSON.stringify({ address: "/poseData", args: poseArray }));
}

// Handle messages coming back from Max
function handleOSCMessage(message) {
    if (message.address === "/poseLabel") {
        const label = message.args[0];
        console.log("🎯 Received pose label from Max:", label);
        onPoseLabelReceived(label);
    }
}

// Dummy callback to be defined in script.js
function onPoseLabelReceived(label) {
    console.log("Pose label received:", label);
}
