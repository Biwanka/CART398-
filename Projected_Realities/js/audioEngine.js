//NOT USED, WAS BUILDING WHEN MAX WASNT SAVING AND KEPT ON CRASHING, IS NOT USED IN FINAL PRESENTATION



class AudioEngine {
    constructor({ sampleUrl, sliceCount = 6 }) {
        this.sampleUrl = sampleUrl;      // single Moon instrumental track
        this.sliceCount = sliceCount;    // how many slices to split into
        this.ctx = null;
        this.buffer = null;
        this.currentSource = null;
        this.nextSource = null;
        this.sliceIndex = -1;

        this.masterGain = null;
        this.pinkNoise = null;
        this.panner = null;

        // Map pose names to playback rate and filter frequency
        this.poseSettings = {
            idle: { rate: 1.0, freq: 1200 },
            walk_left: { rate: -1.0, freq: 1000 }, // reverse
            walk_right: { rate: 1.2, freq: 1500 },
            walk_front: { rate: 0.9, freq: 2000 },
            walk_back: { rate: 1.1, freq: 800 },
            jump: { rate: 1.5, freq: 1800 },
            crouch: { rate: 0.8, freq: 1000 },
            climb: { rate: 1.0, freq: 2500 }
        };
    }

    async init() {
        this.ctx = new (window.AudioContext || window.webkitAudioContext)();
        this.masterGain = this.ctx.createGain();
        this.masterGain.connect(this.ctx.destination);

        // Load main instrumental
        const resp = await fetch(this.sampleUrl);
        const arrayBuffer = await resp.arrayBuffer();
        this.buffer = await this.ctx.decodeAudioData(arrayBuffer);

        // Pink noise background
        const bufferSize = 2 * this.ctx.sampleRate;
        const noiseBuffer = this.ctx.createBuffer(1, bufferSize, this.ctx.sampleRate);
        const output = noiseBuffer.getChannelData(0);
        for (let i = 0; i < bufferSize; i++) output[i] = (Math.random() * 2 - 1) * 0.05;
        this.pinkNoise = this.ctx.createBufferSource();
        this.pinkNoise.buffer = noiseBuffer;
        this.pinkNoise.loop = true;
        this.pinkNoise.connect(this.masterGain);
        this.pinkNoise.start();

        // Panner for spatialization
        this.panner = this.ctx.createStereoPanner();
        this.panner.connect(this.masterGain);

        console.log("✅ AudioEngine initialized with pitch/filter modulation");
    }

    playSlice(poseName = "idle") {
        if (!this.buffer) return;
        const totalSlices = this.sliceCount;

        // assign slice index based on pose name
        const poses = Object.keys(this.poseSettings);
        const newIndex = poses.indexOf(poseName) % totalSlices;

        if (newIndex === this.sliceIndex) return; // same slice

        const duration = this.buffer.duration / totalSlices;
        const startTime = newIndex * duration;
        const endTime = startTime + duration;

        const now = this.ctx.currentTime;

        // Setup source
        const source = this.ctx.createBufferSource();
        source.buffer = this.buffer;
        source.loop = true;
        source.loopStart = startTime;
        source.loopEnd = endTime;

        // Playback rate
        source.playbackRate.value = this.poseSettings[poseName]?.rate || 1.0;

        // Filter
        const filter = this.ctx.createBiquadFilter();
        filter.type = "lowpass";
        filter.frequency.value = this.poseSettings[poseName]?.freq || 1500;

        // Connect chain
        source.connect(filter);
        filter.connect(this.panner);

        // Crossfade
        const gain = this.ctx.createGain();
        gain.gain.setValueAtTime(0, now);
        gain.gain.linearRampToValueAtTime(0.8, now + 0.05);
        filter.connect(gain);
        gain.connect(this.masterGain);

        // Stop previous slice
        if (this.currentSource) {
            this.currentGain.gain.linearRampToValueAtTime(0, now + 0.2);
            this.currentSource.stop(now + 0.2);
        }

        this.currentSource = source;
        this.currentGain = gain;
        this.sliceIndex = newIndex;

        source.start();
    }

    updateFromCharacter(xNorm, yNorm) {
        if (!this.panner) return;
        this.panner.pan.value = Math.max(-1, Math.min(1, xNorm * 2 - 1));
        if (this.currentGain) {
            this.currentGain.gain.value = 0.2 + yNorm * 0.6;
        }
    }
}
