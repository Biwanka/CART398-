//------------------------------------------------------------
// server_osc.js
// Bianca Gauthier — Projected Realities
//
// ✅ This Node.js bridge listens to OSC messages from Max
// and WebSocket messages from your browser (p5.js + PoseNet).
// It forwards them back and forth so your JS and Max talk!
//------------------------------------------------------------

const OSC = require("osc-js");

// --- Configuration ---
const WS_PORT = 8081;   // WebSocket server (browser <-> Node)
const UDP_PORT = 9129;  // UDP OSC (Node <-> Max)
const UDP_HOST = "127.0.0.1"; // Localhost — same computer

// --- Initialize OSC ---
const osc = new OSC({
    plugin: new OSC.BridgePlugin({
        wsServer: { port: WS_PORT },
        udpClient: { port: UDP_PORT, host: UDP_HOST },
        udpServer: { port: UDP_PORT, host: UDP_HOST },
    }),
});

// --- Start OSC Bridge ---
osc.open();
console.log(`✅ OSC Bridge running
   WebSocket → ws://localhost:${WS_PORT}
   UDP → ${UDP_HOST}:${UDP_PORT}
   Ready to send/receive data between Max and p5.js!
`);

// --- Listen for incoming WebSocket messages ---
osc.on("open", () => console.log("🟢 WebSocket connection open"));
osc.on("close", () => console.log("🔴 WebSocket connection closed"));
osc.on("error", (err) => console.error("⚠️ OSC Error:", err.message));
osc.on("*", (message) => {
    console.log("📩 Incoming:", message.address, message.args);
});
