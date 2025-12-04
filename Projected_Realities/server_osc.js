//------------------------------------------------------------
// server_osc.js — Bidirectional OSC Bridge + Auto-Kill Ports
//------------------------------------------------------------
//
// npm install ws node-osc
// node server_osc.js
//------------------------------------------------------------

const WebSocket = require("ws");
const osc = require("node-osc");
const { exec } = require("child_process");

//------------------------------------------------------------
// CONFIG
//------------------------------------------------------------
const WS_PORT = 8081;          // WebSocket → Browser
const UDP_TO_MAX = 9129;       // Browser → Max
const UDP_FROM_MAX = 9130;     // Max → Browser
const UDP_HOST = "127.0.0.1";

//------------------------------------------------------------
// AUTO-KILL FUNCTION
//------------------------------------------------------------
// Tries to free a port before server launch.
// Works for macOS, Linux, and Windows.
function freePort(port) {
    return new Promise((resolve) => {
        const cmd =
            process.platform === "win32"
                ? `netstat -ano | findstr :${port}`
                : `lsof -ti tcp:${port}`;

        exec(cmd, (err, stdout) => {
            if (!stdout) {
                console.log(`✔ Port ${port} is free`);
                return resolve();
            }

            const pid = stdout.trim();
            console.log(`⚠ Port ${port} is in use by PID ${pid}. Killing it…`);

            const killCmd =
                process.platform === "win32"
                    ? `taskkill /PID ${pid} /F`
                    : `kill -9 ${pid}`;

            exec(killCmd, () => {
                console.log(`💀 Killed process ${pid} on port ${port}`);
                resolve();
            });
        });
    });
}

//------------------------------------------------------------
// START SERVER (AFTER AUTO-KILL)
//------------------------------------------------------------
async function startServer() {
    await freePort(WS_PORT);

    //--------------------------------------------------------
    // WebSocket Server
    //--------------------------------------------------------
    const wss = new WebSocket.Server({ port: WS_PORT }, () => {
        console.log(`✅ WebSocket listening on ws://localhost:${WS_PORT}`);
    });

    //--------------------------------------------------------
    // OSC Client (Browser → Max)
    //--------------------------------------------------------
    const oscClient = new osc.Client(UDP_HOST, UDP_TO_MAX);

    //--------------------------------------------------------
    // OSC Server (Max → Browser)
    //--------------------------------------------------------
    const oscServer = new osc.Server(UDP_FROM_MAX, UDP_HOST, () => {
        console.log(`📡 Listening for OSC from Max on udp://${UDP_HOST}:${UDP_FROM_MAX}`);
    });

    //--------------------------------------------------------
    // WS Connection Handler
    //--------------------------------------------------------
    wss.on("connection", (ws) => {
        console.log("🟢 Browser connected via WebSocket");

        //----------------------------------------------------
        // Browser → Max (OSC out)
        //----------------------------------------------------
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

        //----------------------------------------------------
        // Max → Browser (OSC in)
        //----------------------------------------------------
        oscServer.on("message", (msg) => {
            const address = msg[0];
            const args = msg.slice(1);

            console.log("🎧 Received from Max:", address, args);

            const oscData = { address, args };
            ws.send(JSON.stringify(oscData));
        });

        ws.on("close", () => console.log("🔴 Browser disconnected"));
    });
}

// Run everything
startServer();














// //------------------------------------------------------------
// // server_osc.js — Bidirectional OSC Bridge
// //------------------------------------------------------------

// // npm install ws node-osc
// // node server_osc.js
// //------------------------------------------------------------

// const WebSocket = require("ws");
// const osc = require("node-osc");

// const WS_PORT = 8081;
// const UDP_TO_MAX = 9129;
// const UDP_FROM_MAX = 9130;
// const UDP_HOST = "127.0.0.1";

// const wss = new WebSocket.Server({ port: WS_PORT }, () => {
//     console.log(`✅ WebSocket listening on ws://localhost:${WS_PORT}`);
// });

// // OSC

// const oscClient = new osc.Client(UDP_HOST, UDP_TO_MAX);
// const oscServer = new osc.Server(UDP_FROM_MAX, UDP_HOST, () => {
//     console.log(`📡 Listening for OSC from Max on udp://${UDP_HOST}:${UDP_FROM_MAX}`);
// });

// //Browser → Max

// wss.on("connection", (ws) => {
//     console.log("🟢 Browser connected via WebSocket");

//     ws.on("message", (msg) => {
//         try {
//             const data = JSON.parse(msg);
//             console.log("🌐 Received from browser:", data);
//             if (data.address && data.args) {
//                 console.log("📤 Sending to Max:", data.address, data.args);
//                 oscClient.send(data.address, ...data.args);
//             }
//         } catch (err) {
//             console.error("⚠️ Invalid WebSocket message:", err);
//         }
//     });


//     // Max → Browser

//     oscServer.on("message", (msg) => {
//         const address = msg[0];
//         const args = msg.slice(1);
//         console.log("🎧 Received from Max:", address, args);
//         const oscData = { address, args };
//         ws.send(JSON.stringify(oscData));
//     });

//     ws.on("close", () => console.log("🔴 Browser disconnected"));
// });




