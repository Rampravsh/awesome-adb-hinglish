# ⚡ Awesome ADB in Hinglish (The Ultimate Visual Guide) 📱💻

<div align="center">

[![GitHub Stars](https://img.shields.io/github/stars/Rampravsh/awesome-adb-hinglish?style=for-the-badge&color=ffd700)](https://github.com/Rampravsh/awesome-adb-hinglish)
[![GitHub Forks](https://img.shields.io/github/forks/Rampravsh/awesome-adb-hinglish?style=for-the-badge&color=60a5fa)](https://github.com/Rampravsh/awesome-adb-hinglish/network/members)
[![License: MIT](https://img.shields.io/badge/License-MIT-34d399.svg?style=for-the-badge)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-a78bfa.svg?style=for-the-badge)](CONTRIBUTING.md)
[![Created by Rampravesh Kumar](https://img.shields.io/badge/Author-Rampravesh%20Kumar-ff5722?style=for-the-badge)](https://github.com/Rampravsh)

<br/>

**Android Debug Bridge (ADB) & scrcpy Master Guide in Hinglish — Zero se Hero tak!**  
*Visual Diagrams, In-Depth scrcpy Mastery, Real-World Hacks, 1-Click Scripts & Cheatsheet.*

[🚀 Quickstart](#-1-minute-quickstart-installation) • [📊 Command Categories](#-adb-commands-ki-7-categories) • [🎮 scrcpy Mastery](#-scrcpy-master-guide-8-in-depth-chapters) • [🪄 1-Click Scripts](#-ready-to-use-1-click-scripts) • [📑 Cheatsheet](CHEATSHEET.md) • [🤝 Contribute](CONTRIBUTING.md)

</div>

---

## 🌟 Yeh Repo Kyun Khaas Hai?

Zyadatar documentation dry aur English jargon se bhari hoti hai. Yeh guide khas Indian developers, students aur Android enthusiasts ke liye banayi gayi hai:
- 💡 **Aasan Hinglish Bhasha** — Koi complex technical baatein nahi, seedha practical learning.
- 🎮 **Dedicated scrcpy Master Guide** — 8 In-Depth chapters for 120FPS gaming, HD webcam, OTG control, audio stream & rotation.
- 📊 **Flowcharts & Visual Diagrams** — Har workflow ke liye Mermaid diagrams.
- ⚡ **1-Click Automation Scripts** — Bloatware remover, scrcpy hub aur wireless connector.
- 🎯 **Real World Hacks** — Screen broken data backup, fake battery prank, camera webcam setup.

---

## 🗺️ Architecture: ADB & scrcpy Kaise Kaam Karte Hain?

```mermaid
graph LR
    subgraph PC ["💻 Computer / PC"]
        Client["ADB Client & scrcpy"]
        Server["ADB Server (:5037)"]
        Client <--> Server
    end

    subgraph Phone ["📱 Android Device"]
        Daemon["ADBD Daemon (Shell User)"]
        ScrcpyServer["scrcpy-server.jar (In-Memory)"]
        Hardware["Camera / Display / Sensors / Audio"]
        Daemon <--> Hardware
        ScrcpyServer <--> Hardware
    end

    Server <==>|"USB Cable ya Wi-Fi Network"| Daemon
```

---

## ⚡ 1-Minute Quickstart (Installation)

### Windows (Bina Android Studio ke - Sirf ~12 MB)
PowerShell me run karein:
```powershell
winget install Google.PlatformTools Genymobile.scrcpy
```

### macOS / Linux
```bash
# Mac (Homebrew)
brew install android-platform-tools scrcpy

# Ubuntu / Debian
sudo apt update && sudo apt install adb fastboot scrcpy
```

### Phone Setup:
1. **Settings** > **About Phone** > **Build Number** par 7 baar tap karein.
2. **Developer Options** me jaakar **USB Debugging** ko ON karein.
3. Phone ko USB se PC me lagayein aur screen par **"Always allow from this computer"** allow karein.
4. Verify karein:
   ```bash
   adb devices
   ```

---

## 🎮 scrcpy Master Guide (8 In-Depth Chapters)

scrcpy ko master karne ke liye dedicated modular guides:

```mermaid
graph TD
    S["🎮 scrcpy Master Guide"]
    S --> CH1["📘 01. Overview & Setup Architecture"]
    S --> CH2["⚡ 02. 120 FPS & Display Performance"]
    S --> CH3["🔄 03. Rotation & Orientation Mastery"]
    S --> CH4["⌨️ 04. OTG Mouse & Keyboard Escape Guide"]
    S --> CH5["🎥 05. DSLR HD Webcam & OBS Setup"]
    S --> CH6["🔊 06. Audio Forwarding & MP4 Recording"]
    S --> CH7["📡 07. Wireless & Multi-Device Control"]
    S --> CH8["📑 08. Shortcuts & Drag-Drop Cheatsheet"]
```

| Chapter | Topic | Link |
| :--- | :--- | :--- |
| **01** | **scrcpy Overview & Architecture** (No-app injection, zero latency) | [📖 Chapter 01](scrcpy-guide/01-scrcpy-overview-and-setup.md) |
| **02** | **Display & 120 FPS Gaming** (Bitrate, codecs, resolution scaling) | [📖 Chapter 02](scrcpy-guide/02-display-and-performance-tuning.md) |
| **03** | **Rotation & Orientation** (`Alt+r`, vertical portrait vs landscape) | [📖 Chapter 03](scrcpy-guide/03-rotation-and-orientation-mastery.md) |
| **04** | **OTG Mode Masterclass** (Mouse release with `Left Alt`, full keymap) | [📖 Chapter 04](scrcpy-guide/04-otg-mode-mouse-and-keyboard.md) |
| **05** | **DSLR HD Webcam Mode** (Back/Front camera for Zoom, Meet, OBS) | [📖 Chapter 05](scrcpy-guide/05-hd-webcam-and-camera-streaming.md) |
| **06** | **Audio Forwarding & Recording** (Internal sound stream, direct MP4) | [📖 Chapter 06](scrcpy-guide/06-audio-forwarding-and-recording.md) |
| **07** | **Wireless & Multi-Device** (Wi-Fi streaming, 2+ phones simultaneously) | [📖 Chapter 07](scrcpy-guide/07-wireless-scrcpy-and-multi-device.md) |
| **08** | **Shortcuts & Gestures** (Complete keyboard shortcuts & drag-drop) | [📖 Chapter 08](scrcpy-guide/08-shortcuts-and-drag-drop-cheatsheet.md) |

---

## 📊 ADB Commands ki 7 Categories

```mermaid
graph TD
    ADB["⚡ ADB Commands"]
    ADB --> C1["1. Connection & Server"]
    ADB --> C2["2. Networking & Ports"]
    ADB --> C3["3. File Transfers"]
    ADB --> C4["4. Package Manager (pm)"]
    ADB --> C5["5. Device Control (am / input)"]
    ADB --> C6["6. Logs & Diagnostics"]
    ADB --> C7["7. System & Recovery"]
```

---

### 1️⃣ Connection & Wireless Commands
| Kaam | Command |
| :--- | :--- |
| **Connected devices dekhna** | `adb devices` |
| **Bina Cable ke Wi-Fi se connect karna** | `adb tcpip 5555` fir `adb connect <PHONE_IP>:5555` |
| **Wireless connection todna** | `adb disconnect` |
| **ADB Server restart karna** | `adb kill-server` && `adb start-server` |

---

### 2️⃣ Networking & Port Forwarding (Web / Backend Devs)
| Kaam | Command |
| :--- | :--- |
| **PC ke `localhost:5000` ko phone se connect karna** | `adb reverse tcp:5000 tcp:5000` |
| **Phone ke port ko PC par forward karna** | `adb forward tcp:8080 tcp:8080` |
| **Active Port connections list karna** | `adb reverse --list` |

---

### 3️⃣ File Transfer Commands
| Kaam | Command |
| :--- | :--- |
| **PC se Phone me file bhejna** | `adb push myfile.pdf /sdcard/Download/` |
| **Phone se PC me photo/data lana** | `adb pull /sdcard/DCIM/Camera/photo.jpg C:\Users\` |
| **Toote phone se saari photos backup karna** | `adb pull /sdcard/DCIM/ C:\PhoneBackup\` |

---

### 4️⃣ Package Management Commands (`pm` - Apps Control)
| Kaam | Command |
| :--- | :--- |
| **Nayi App install karna** | `adb install app.apk` |
| **App uninstall karna** | `adb uninstall com.whatsapp` |
| **Saari installed apps dekhna** | `adb shell pm list packages` |
| **System Bloatware hatana (No Root)** | `adb shell pm uninstall -k --user 0 com.facebook.system` |
| **App ka data & cache saaf karna** | `adb shell pm clear com.instagram.android` |

---

### 5️⃣ Device Control & Automation (`am` & `input`)
| Kaam | Command |
| :--- | :--- |
| **Screen par tap / click karna** | `adb shell input tap 500 1200` |
| **Automatic text type karna** | `adb shell input text "ShikshaPlus"` |
| **Swipe / Scroll karna** | `adb shell input swipe 500 1500 500 500 300` |
| **Power / Lock Button** | `adb shell input keyevent 26` |
| **Home Button** | `adb shell input keyevent 3` |
| **Back Button** | `adb shell input keyevent 4` |
| **Chrome Browser Open Karna** | `adb shell am start -a android.intent.action.VIEW -d "http://localhost:5000"` |

---

### 6️⃣ Debugging & Diagnostics (Logs aur Battery)
| Kaam | Command |
| :--- | :--- |
| **Live System / App Errors dekhna** | `adb logcat *:E` |
| **Chrome Browser ke logs dekhna** | `adb logcat -s chromium` |
| **Log buffer clean karna** | `adb logcat -c` |
| **Battery status, temperature aur health** | `adb shell dumpsys battery` |
| **Fake Battery Level set karna (Prank/Testing)** | `adb shell dumpsys battery set level 10` |
| **PC par direct Screenshot lena** | `adb exec-out screencap -p > screenshot.png` |

---

### 7️⃣ System, Recovery & Flashing
| Kaam | Command |
| :--- | :--- |
| **Phone Restart karna** | `adb reboot` |
| **Recovery Mode me jana** | `adb reboot recovery` |
| **Fastboot / Bootloader Mode me jana** | `adb reboot bootloader` |
| **System Update flash karna** | `adb sideload update.zip` |

---

## 🪄 Ready-to-Use 1-Click Scripts

Is repository ke [`scripts/`](scripts/) folder me ready-made tools hain:

1. **`scripts/start_scrcpy_hub.bat`** 🎮  
   Interactive Launcher Menu: Gaming mode, HD Webcam, Battery saver, Wireless mirroring aur screen recording ko 1-click me launch karein.
2. **`scripts/phone_as_webcam.bat`** 🎥  
   1-Click me phone camera ko PC webcam banata hai with Landscape aur Portrait rotation options.
3. **`scripts/universal_debloater.bat`** 🗑️  
   Xiaomi, Realme, Infinix, Samsung ke faltu ads aur bloatware ko safe tarike se disable karta hai.
4. **`scripts/wireless_connect.bat`** 📡  
   Automatically aapke phone ka Wi-Fi IP detect karke wireless connect karta hai.
5. **`scripts/take_screenshot.bat`** 📸  
   1-Click me phone ki screen capture karke aapke PC Desktop par save karta hai.

---

## 📚 Deep Dive Modules

Detailed step-by-step guides ke liye modules padhein:
- [📖 Module 01: Installation & Driver Setup](modules/01-installation-and-setup.md)
- [📖 Module 02: Wireless Debugging (Bina Cable)](modules/02-wireless-debugging.md)
- [📖 Module 03: Bloatware Remover Master Guide](modules/03-bloatware-remover-guide.md)
- [📖 Module 04: Automation & Scripting Tricks](modules/04-device-automation-and-tricks.md)
- [📖 Module 05: Screen Mirroring & PC Webcam Guide](modules/05-pc-screen-mirroring-and-webcam.md)
- [📖 Module 06: Troubleshooting & Common Errors](modules/06-troubleshooting.md)

---

## 🤝 Contribution (Saath Judein!)

Agar aapke paas koi cool ADB command ya useful script hai:
1. Is repo ko **Fork** karein.
2. Apni command ya script add karein.
3. **Pull Request (PR)** submit karein!

Dekhein [CONTRIBUTING.md](CONTRIBUTING.md) guidance ke liye.

---

## 👨‍💻 Author & Maintainer

Created with ❤️ by **[Rampravesh Kumar](https://github.com/Rampravsh)**  
*Email: rampraveshkr4545@gmail.com*

---

## ⭐ Show Some Love
Agar is repository ne aapki madad ki hai, toh please top right me **Star ⭐** dabana na bhoolein! It means a lot!
