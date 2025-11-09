/*
----------------------------------------------------------
PROJECTED REALITIES — OSC Bridge (p5.js → Max)
Author: Bianca Gauthier

Description:
This Node.js script acts as a bridge between your PoseNet sketch
running in the browser and Max (for sound or FluCoMa processing).

It uses osc-js to:
1. Open a WebSocket server on port 8081 (for p5.js).
2. Send OSC data via UDP to Max on port 6448.
----------------------------------------------------------
*/

import OSC from "osc-js";

// --- Configuration ---
const config = {
    udpClient: {
        host: "127.0.0.1", // or your Tailscale IP if remote
        port: 6448,        // port where Max listens
    },
    wsServer: {
        port: 8081,        // WebSocket for p5
    },
};

// --- Initialize Bridge ---
const osc = new OSC({ plugin: new OSC.BridgePlugin(config) });
osc.open();

console.log("✅ OSC Bridge Active");
console.log("WebSocket → ws://localhost:8081");
console.log("UDP → Max @ 127.0.0.1:6448");

// --- Optional: Listen for any OSC messages (debugging) ---
osc.on("*", (message) => {
    console.log("Received OSC message:", message.address, message.args);
});

// bridge_osc.js
// ---------------------------------------------
// Handles OSC communication between p5.js and Max/MSP
// ---------------------------------------------

// Create a WebSocket to communicate with Node OSC Bridge (server_osc.js)
// bridge_osc.js
// Handles WebSocket connection to Node OSC bridge (server_osc.js)

let socket;

function setupOSC() {
    socket = new WebSocket("ws://localhost:8081");

    socket.onopen = () => console.log("✅ WebSocket connected — ready to send OSC to Max");
    socket.onerror = (err) => console.error("❌ WebSocket error:", err);
    socket.onmessage = (event) => handleOSCMessage(JSON.parse(event.data));
}

function sendPoseDataToMax(poseArray) {
    if (!socket || socket.readyState !== WebSocket.OPEN) return;
    socket.send(JSON.stringify({ address: "/poseData", args: poseArray }));
}

function handleOSCMessage(message) {
    if (message.address === "/poseLabel") {
        const label = message.args[0];
        console.log("🎯 Received pose label from Max:", label);
        onPoseLabelReceived(label);
    }
}

console.log(setupOSC);
