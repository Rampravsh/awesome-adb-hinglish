# 📘 Chapter 03: Rotation & Orientation Mastery 🔄

> **Phone aur Camera ko Portrait (Vertical) aur Landscape (Horizontal) me rotate aur lock karna.**

---

## 🧭 Kyun Phone/Camera shuru me Sideways (Teda) dikhta hai?
Android phones ke internal hardware camera sensors landscape orientation me physical PCB par mount hote hain. Is wajah se scrcpy me bina orientation flag ke camera horizontal dikh sakta hai.

---

## ⚡ 1. Live Keyboard Shortcut (Sabse Aasan)
Jab bhi `scrcpy` window PC screen par open ho:
* 👉 **`Alt + r`** — Screen ya Camera ko **90° Counter-Clockwise Rotate** karega.
* 👉 **`Alt + Shift + r`** — Screen ko **90° Clockwise Rotate** karega.

*(Har baar `Alt + r` dabane se orientation change hoti hai: Vertical ↔ Horizontal).*

---

## 🔒 2. Orientation Lock Commands (Phone Screen ke liye)
Agar aap chahte hain ki phone ghoome bhi toh PC par screen fixed orientation me rahe:

```bash
# 0 = Normal Portrait (Khada / Seedha)
scrcpy --lock-video-orientation=0

# 1 = Landscape (Horizontal - Games aur Videos ke liye)
scrcpy --lock-video-orientation=1

# 2 = Reverse Portrait (Ulta Khada)
scrcpy --lock-video-orientation=2

# 3 = Reverse Landscape (Ulta Horizontal)
scrcpy --lock-video-orientation=3
```

---

## 🎥 3. Camera Webcam Orientation Setup

#### Back Camera ko Vertical (Portrait - Reels/Shorts/Zoom ke liye):
```bash
scrcpy --video-source=camera --orientation=90
```

#### Back Camera ko Horizontal (Landscape - YouTube & OBS ke liye):
```bash
scrcpy --video-source=camera --camera-size=1920x1080 --orientation=0
```

#### Front Selfie Camera ko Vertical (Selfie Mode):
```bash
scrcpy --video-source=camera --camera-facing=front --orientation=90
```

---

## 📱 4. ADB Shell se Phone ka Internal Auto-Rotate Toggle Karna
```bash
# Phone ka Auto-Rotate ON karna
adb shell settings put system accelerometer_rotation 1

# Phone ka Auto-Rotate OFF (Lock) karna
adb shell settings put system accelerometer_rotation 0

# System level par Force Portrait karna
adb shell settings put system user_rotation 0

# System level par Force Landscape karna
adb shell settings put system user_rotation 1
```
