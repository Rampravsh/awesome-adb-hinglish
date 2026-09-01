# 📘 Chapter 06: Audio Forwarding & Screen Recording 🔊🎬

> **Android 11+ sound streaming, direct PC recording to MP4 without lag, aur audio-only mode.**

---

## 🔊 1. Audio Forwarding (Phone Sound on PC)

Android 11 ya usse naye versions me `scrcpy` automatically phone ke saare internal audio ko PC speakers/headphones me stream karta hai:

* **Normal Launch (Audio ON by default on Android 11+):**
  ```bash
  scrcpy
  ```
* **Audio Band Karna (Only Video Stream):**
  ```bash
  scrcpy --no-audio
  ```
* **Sirf Audio Stream Karna (No Video / Screen band):**
  ```bash
  scrcpy --no-video
  ```
* **Audio Codec Change Karna (Low latency vs High Quality):**
  ```bash
  # Opus (Default - Low Lag)
  scrcpy --audio-codec=opus
  # AAC (High Quality)
  scrcpy --audio-codec=aac
  ```

---

## 🔴 2. High-Quality Screen Recording to MP4 (No Watermark)

Bina kisi third-party screen recorder ke direct PC par lossless MP4 recording save karein:

```bash
# Screen Mirroring ke sath Record karna
scrcpy --record=my_recording.mp4

# Bina screen display dekhe Background me Silent Record karna
scrcpy --no-playback --record=background_recording.mp4
```
* **Recording Rokne ke liye:** Window close karein ya terminal me **`Ctrl + C`** dabayein. Video file direct aapke folder me `.mp4` format me save ho jayegi.
