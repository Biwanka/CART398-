//------------------------------------------------------------
// server_osc.js — Bidirectional OSC Bridge
//------------------------------------------------------------

// npm install ws node-osc 
// node server_osc.js
//------------------------------------------------------------

const WebSocket = require("ws");
const osc = require("node-osc");

const WS_PORT = 8081;
const UDP_TO_MAX = 9129;
const UDP_FROM_MAX = 9130;
const UDP_HOST = "127.0.0.1";

const wss = new WebSocket.Server({ port: WS_PORT }, () => {
    console.log(`✅ WebSocket listening on ws://localhost:${WS_PORT}`);
});

// OSC

const oscClient = new osc.Client(UDP_HOST, UDP_TO_MAX);
const oscServer = new osc.Server(UDP_FROM_MAX, UDP_HOST, () => {
    console.log(`📡 Listening for OSC from Max on udp://${UDP_HOST}:${UDP_FROM_MAX}`);
});

//Browser → Max

wss.on("connection", (ws) => {
    console.log("🟢 Browser connected via WebSocket");

    ws.on("message", (msg) => {
        try {
            const data = JSON.parse(msg);
            console.log("🌐 Received from browser:", data);
            if (data.address && data.args) {
                console.log("📤 Sending to Max:", data.address, data.args);
                oscClient.send(data.address, ...data.args);
            }
        } catch (err) {
            console.error("⚠️ Invalid WebSocket message:", err);
        }
    });


    // Max → Browser

    oscServer.on("message", (msg) => {
        const address = msg[0];
        const args = msg.slice(1);
        console.log("🎧 Received from Max:", address, args);
        const oscData = { address, args };
        ws.send(JSON.stringify(oscData));
    });

    ws.on("close", () => console.log("🔴 Browser disconnected"));
});




