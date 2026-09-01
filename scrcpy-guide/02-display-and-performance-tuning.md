# 📘 Chapter 02: Display & Performance Tuning (120 FPS & Low Lag) ⚡

> **Graphic resolution, Bitrate, Frame rate aur Video Codecs ko customize karke maximum performance nikaalein.**

---

## 🎮 1. High-FPS Gaming Mode (120 FPS / 90 FPS)
Agar aap Free Fire, BGMI ya fast-action games khel rahe hain:

```bash
scrcpy --max-fps=120 --video-bit-rate=16M --max-size=1080 --stay-awake
```
* **`--max-fps=120`**: Frame rate ko 120 FPS par unlock karta hai (agar phone support karta hai).
* **`--video-bit-rate=16M`**: Video quality ko 16 Mbps par set karta hai (koi pixelation nahi hogi).
* **`--max-size=1080`**: Max resolution 1080p limit karta hai taaki GPU par extra load na pade.
* **`--stay-awake`**: Screen ko automatically sleep/lock hone se rokta hai.

---

## 💻 2. Low-End PC / Purane Laptops ke liye Settings (Smooth & Light)
Agar aapka PC purana hai ya thoda lag hota hai:

```bash
scrcpy --max-size=720 --video-bit-rate=4M --max-fps=30
```
* Yeh setting CPU aur RAM par zero load dalti hai aur bilkul smooth chalti hai.

---

## 🎬 3. Video Codec Selection (H.264 vs H.265 / HEVC vs AV1)
scrcpy alag-alag video encoders support karta hai:

| Codec Flag | Fayda | Recommendation |
| :--- | :--- | :--- |
| `--video-codec=h264` | Sabse compatible (Default) | Sabhi PCs ke liye |
| `--video-codec=h265` | Better compression & low latency | Modern Snapdragon/Dimensity phones ke liye |
| `--video-codec=av1` | Highest quality at lowest bitrate | Android 14+ / Flagship phones |

---

## ✂️ 4. Screen Crop (Sirf Screen ka ek Hisa Notch/Status bar bina dekhna)
Agar aap status bar ya navigation bar hatana chahte hain ya sirf phone ka center part mirror karna chahte hain:
```bash
# Format: width:height:x:y
scrcpy --crop=1080:1920:0:100
```

---

## 🔋 5. Display Off Mode (Phone Display Band, PC ON) ⭐
Phone ko overheating aur battery drain se bachane ke liye:
```bash
scrcpy --turn-screen-off --stay-awake
```
*Phone ki physical display black ho jayegi, lekin PC par full screen chalti rahegi!*
