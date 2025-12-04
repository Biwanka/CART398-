# Template p5 Project
 Projected Realities — Final Project README  BY Bianca Gauthier
Overview

Projected Realities is an interactive audio-visual system that uses full-body pose recognition and hand tracking to animate a digital avatar and manipulate sound in real time. The participant’s physical gestures are captured through a webcam and interpreted using PoseNet and MediaPipe Hands inside a p5.js environment. These coordinates are sent via OSC to Max/MSP, where they are analyzed, classified, and used to control a custom audio engine made of two samplers and a chaotic synthesizer.

The animation component renders a hand-painted character who imitates the participant’s body orientation through a set of front, side, back, walking, jumping, crouching, and climbing animations. By embodying the avatar, the performer effectively “steps into” a projected world and influences its sonic atmosphere.

This project blends gesture-based interaction, machine learning, hand-drawn animation, and sound design into a multimodal performance interface.



System Architecture
1. Pose & Hand Tracking (p5.js + ml5 + MediaPipe)

PoseNet extracts upper-body keypoints:

nose

left wrist

right wrist

left shoulder

right shoulder

MediaPipe Hands extracts 21 hand landmarks for expressive, detailed gesture data.

The tracking data is normalized and combined into a 48-value feature vector.

2. Machine Learning Classification (Max/MSP + FluCoMa)

Inside Max/MSP:

Pose/hand vectors arrive via OSC.

A FluCoMa MLP Classifier is trained on custom examples (idle, walk_right, walk_left, crouch, jump, climb, etc).

Max outputs a single pose label (predictpoint) based on the current body posture.

3. OSC Bridge (Node.js)

A Node WebSocket/OSC bridge:

Receives pose vectors from p5.js

Forwards them to Max

Receives predicted pose labels back

Sends them to the animation renderer in real time

This keeps the system modular and prevents port conflicts.

4. Animation System (p5.js + custom Character class)

The character on screen:

receives pose labels via WebSocket

switches between sprite animations

displays the avatar on a virtual canvas

reacts smoothly to the performer’s movement

Invisible boundaries prevent the character from walking off the painted projection area or “through” buildings.

5. Sound Engine (Max/MSP)

Audio is generated entirely in Max/MSP.

The system includes:

Two sample-based instruments using chopped Sailor Moon audio

One chaotic synthesizer that produces unstable textures

Pose-responsive modulation:

walking → triggers rhythmic slices


Max becomes the expressive sound layer, turning body movement into musical gesture.



## Installation Instructions

Requirements

Node.js (for OSC bridge)

Max/MSP with FluCoMa Toolkit installed

Web browser with webcam

Local web server or VSCode Live Server extension



# Setup steps 

Install Node dependencies

npm install ws node-osc


Start the OSC/WebSocket bridge

node server_osc.js


Open Max/MSP patch

Ensure UDP ports match your setup

Train the classifier using your captured examples

Turn audio on

Run index.html

Through local server

Webcam activates automatically

Interact with the system

Move, gesture, jump, crouch  // pose are in an image called pose_documentary

Watch the character mimic your actions

Listen as your pose reshapes the audio textures

Controls

Hand gestures → control timbre

Body orientation → selects the animation state

Walking motions → modify sampler playback

Jump / crouch → trigger sonic events

Boundaries → produce collision sounds

Neck/shoulder height → shape filter movement and space


[View this project online](URL_FOR_THE_RUNNING_PROJECT) (need contributors signoff)

## Description
Artistic Statement (Optional Section — I can rewrite this too)

This project explores embodiment and translation between physical and digital presence. The painted character becomes a proxy for the performer, mediating between gesture and sound. Sound from Sailor Moon is repurposed and fragmented, blending nostalgia with experimental sonic structures. The result is an interactive environment that blurs play, performance, and projection, creating a world where gesture becomes both movement and music.



## Credits

Credits
This project uses [p5.js](https://p5js.org).

Pose tracking: ml5.js + MediaPipe

Audio engine + ML classification: Max/MSP + FluCoMa

Character design + animations: Bianca Gauthier

Project design + programming: Bianca Gauthier

Sound sources: Sailor Moon sampled and transformed

Course: CART 398 — Interactive Media

License

This project is for educational purposes and does not claim ownership over copyrighted audio sources used for academic experimentation.


## Attribution

License

This project is for educational purposes and does not claim ownership over copyrighted audio sources used for academic experimentation.
Sailor Moon audio used in Maxmsp in Samplers 