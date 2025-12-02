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

    socket.onopen = () => console.log("✅ WebSocket connected");
    socket.onerror = (err) => console.error("❌ WebSocket error:", err);

    socket.onmessage = async (event) => {
        try {
            let data = event.data;
            if (data instanceof Blob) data = await data.text();

            const msg = JSON.parse(data);

            // LISTEN FOR /predictpoint
            if (msg.address === "/predictpoint" && msg.args.length > 0) {
                const label = msg.args[0];
                console.log("🎯 Received pose prediction:", label);

                // Notify p5.js
                window.dispatchEvent(new CustomEvent("poseLabelReceived", {
                    detail: label
                }));
            }

        } catch (err) {
            console.warn("⚠️ Could not parse OSC → WS message:", err);
        }
    };
}

function sendPoseDataToMax(poseArray) {
    if (!socket || socket.readyState !== WebSocket.OPEN) return;

    const msg = {
        address: "/poseData",
        args: poseArray.map((v) => v)
    };

    socket.send(JSON.stringify(msg));
}



