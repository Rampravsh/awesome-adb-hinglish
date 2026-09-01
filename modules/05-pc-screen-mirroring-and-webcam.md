# 📖 Module 05: Screen Mirroring & PC Webcam Guide

> **Phone ki live screen ko PC par mouse & keyboard se chalayein.**

---

## 🖥️ 1. scrcpy (Screen Copy) Setup

`scrcpy` ek free, open-source aur zero-latency tool hai.

### Installation:
```powershell
winget install Genymobile.scrcpy
```

### Phone Chalana:
Phone USB se connect karke terminal me type karein:
```bash
scrcpy
```
*Aapke PC par phone ki window khul jayegi. Mouse se swipe/click karein aur keyboard se type karein!*

---

## 🎥 2. Phone ke Camera ko PC Webcam Banana (OBS / Zoom / Meet)

Phone ka camera laptop ke kharab webcam se 10x behtar hota hai.

```bash
scrcpy --video-source=camera
```
- Front camera ke liye:
  ```bash
  scrcpy --video-source=camera --camera-facing=front
  ```
