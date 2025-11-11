// //------------------------------------------------------------
// // bridge_osc.js
// // Bianca Gauthier — Projected Realities
// // -----------------------------------------------------------
// // Handles WebSocket communication between browser (p5.js)
// // and Node.js OSC bridge (server_osc.js).
// // -----------------------------------------------------------

// let socket; // global WebSocket object

// function setupOSC() {
//     socket = new WebSocket("ws://localhost:8081");

//     socket.onopen = () => console.log("✅ WebSocket connected — ready to send OSC to Max");
//     socket.onerror = (err) => console.error("❌ WebSocket error:", err);

//     // Handle incoming OSC messages from Max (via Node bridge)
//     socket.onmessage = async (event) => {
//         try {
//             let data;

//             // Handle both string and Blob data (the error was caused by Blob)
//             if (event.data instanceof Blob) {
//                 const text = await event.data.text(); // convert binary Blob → text
//                 data = JSON.parse(text);
//             } else if (typeof event.data === "string") {
//                 data = JSON.parse(event.data);
//             } else {
//                 console.warn("⚠️ Unknown WebSocket data type:", event.data);
//                 return;
//             }

//             handleOSCMessage(data);
//         } catch (err) {
//             console.error("❌ Error parsing OSC message:", err);
//         }
//     };
// }

// // Send pose data (normalized body points) to Node → Max
// function sendPoseDataToMax(poseArray) {
//     if (!socket || socket.readyState !== WebSocket.OPEN) return;
//     socket.send(JSON.stringify({ address: "/poseData", args: poseArray }));
// }

// // When Node bridge sends messages back (from Max)
// function handleOSCMessage(message) {
//     if (message.address === "/poseLabel") {
//         const label = message.args[0];
//         console.log("🎯 Received pose label from Max:", label);
//         onPoseLabelReceived(label); // defined in script.js
//     }
// }

// // Default safety callback if not overwritten
// function onPoseLabelReceived(label) {
//     console.log("Pose label received:", label);
// }


let socket;

function setupOSC() {
    socket = new WebSocket("ws://localhost:8081");

    socket.onopen = () => console.log("✅ WebSocket connected — ready to send OSC to Max");
    socket.onerror = (err) => console.error("❌ WebSocket error:", err);

    // Handle messages safely — if it's a Blob, convert to text first
    socket.onmessage = async (event) => {
        try {
            let data = event.data;
            if (data instanceof Blob) data = await data.text();
            const msg = JSON.parse(data);
            handleOSCMessage(msg);
        } catch (err) {
            console.error("⚠️ Invalid OSC message:", err);
        }
    };
}

function sendPoseDataToMax(poseArray) {
    if (!socket || socket.readyState !== WebSocket.OPEN) return;

    // Proper OSC object structure
    const msg = {
        address: "/poseData",
        args: poseArray.map((v) => ({ type: "f", value: v })),
    };

    socket.send(JSON.stringify(msg));
}

function handleOSCMessage(message) {
    if (message.address === "/poseLabel") {
        const label = message.args[0].value || message.args[0];
        console.log("🎯 Received pose label from Max:", label);
        onPoseLabelReceived(label);
    }
}

function onPoseLabelReceived(label) {
    console.log("Pose label received:", label);
}
