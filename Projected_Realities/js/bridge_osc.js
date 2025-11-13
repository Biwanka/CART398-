// //------------------------------------------------------------
// // bridge_osc.js
// // Bianca Gauthier — Projected Realities
// // -----------------------------------------------------------
//------------------------------------------------------------

// js/bridge_osc.js
// ------------------------------------------------------------
// Simple WebSocket ↔ Browser bridge for the Node OSC bridge
// (non-module version — include with a <script> tag)
// - Exposes global `setupOSC()` and `sendPoseDataToMax()`
// - Dispatches `poseLabelReceived` CustomEvent when Max sends /poseLabel
// ------------------------------------------------------------

// bridge_osc.js — WebSocket bridge between p5.js and Node
let socket;

function setupWebSocket() {
    socket = new WebSocket("ws://localhost:8081");

    socket.onopen = () => console.log("✅ WebSocket connected to Node bridge");
    socket.onerror = (err) => console.error("❌ WebSocket error:", err);

    socket.onmessage = async (event) => {
        try {
            let data = event.data;
            if (data instanceof Blob) data = await data.text();
            const msg = JSON.parse(data);

            if (msg.address === "/poseLabel" && msg.args.length > 0) {
                const label = msg.args[0];
                console.log("🎯 Received pose label:", label);
                window.dispatchEvent(new CustomEvent("poseLabelReceived", { detail: label }));
            }
        } catch (err) {
            console.warn("⚠️ Failed to parse incoming OSC message:", err);
        }
    };
}

function sendPoseDataToMax(poseArray) {
    if (!socket || socket.readyState !== WebSocket.OPEN) return;

    const msg = {
        address: "/poseData",
        args: poseArray.map((v) => ({ type: "f", value: v })),
    };

    socket.send(JSON.stringify(msg));
}






// Expose functions globally (so older code can call them)
// (They are defined as named functions above; nothing extra needed.)
// Example usage in your p5 script:
//   setupOSC();           // once in setup()
//   sendPoseDataToMax([...]);  // whenever you have pose array




// // let socket;

// function setupOSC() {
//     socket = new WebSocket("ws://localhost:8081");

//     socket.onopen = () => console.log("✅ WebSocket connected — ready to send OSC to Max");
//     socket.onerror = (err) => console.error("❌ WebSocket error:", err);

//     // Handle messages safely — if it's a Blob, convert to text first
//     socket.onmessage = async (event) => {
//         try {
//             let data = event.data;
//             if (data instanceof Blob) data = await data.text();
//             const msg = JSON.parse(data);
//             handleOSCMessage(msg);
//         } catch (err) {
//             console.error("⚠️ Invalid OSC message:", err);
//         }
//     };
// }

// function sendPoseDataToMax(poseArray) {
//     if (!socket || socket.readyState !== WebSocket.OPEN) return;

//     // Proper OSC object structure
//     const msg = {
//         address: "/poseData",
//         args: poseArray.map((v) => ({ type: "f", value: v })),
//     };

//     socket.send(JSON.stringify(msg));
// }

// function handleOSCMessage(message) {
//     if (message.address === "/poseLabel") {
//         const label = message.args[0].value || message.args[0];
//         console.log("🎯 Received pose label from Max:", label);
//         onPoseLabelReceived(label);
//     }
// }

// function onPoseLabelReceived(label) {
//     console.log("Pose label received:", label);
// }
