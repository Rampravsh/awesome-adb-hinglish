# 📑 ADB & scrcpy Master Cheatsheet (Hinglish)

> **Sabhi zaroori ADB & scrcpy commands aur keyboard keys ka 1-page quick reference.**

---

## 🎮 scrcpy & OTG Shortcuts Quick-Table

### 🚨 OTG Mode (Mouse Lock se Bahar Aana):
* **Mouse ko PC par wapas lana:** **`Left Alt`** key ko **1 baar press** karein.
* **OTG Mode Exit karna:** Terminal me **`Ctrl + C`** dabayein.

### 🖱️ Mouse & Keyboard Keys in OTG / Mirroring:
| Button / Key | Phone me Action |
| :--- | :--- |
| **Right Click** | ⬅️ Back Button |
| **Middle Click (Wheel)** | 🏠 Home Screen |
| **Esc Key** | ⬅️ Back Button |
| **Windows Key** | 🏠 Home Screen / Assistant |
| **Alt + Tab** | 📑 Recent Apps / App Switcher |
| **PrintScreen** | 📸 Screenshot capture |
| **Ctrl + C / Ctrl + V** | Text Copy / Paste |
| **Volume Up / Down Keys** | Phone ka Volume control |
| **Sleep / Power Key** | Phone Screen Lock / Unlock |
| **Alt + o** (In Mirroring) | Phone Screen OFF karna (PC ON rahega) |
| **Alt + f** (In Mirroring) | Fullscreen Mode |

---

## 🔌 Connection & Device
```bash
# Connected devices list karna
adb devices

# Wireless mode ON karna (Port 5555)
adb tcpip 5555

# Wi-Fi se connect karna
adb connect 192.168.1.XX:5555

# Wireless connection disconnect karna
adb disconnect

# ADB Server restart karna
adb kill-server && adb start-server
```

---

## 🌐 Port Forwarding & Backend
```bash
# PC localhost:5000 ko phone se link karna
adb reverse tcp:5000 tcp:5000

# Phone ke port ko PC par forward karna
adb forward tcp:8080 tcp:8080

# Active port links check karna
adb reverse --list
adb forward --list

# Sabhi reverse connections hatana
adb reverse --remove-all
```

---

## 📁 File Transfer
```bash
# PC se phone me file bhejna
adb push C:\file.txt /sdcard/Download/

# Phone se PC me file download karna
adb pull /sdcard/DCIM/Camera/photo.jpg C:\Users\Desktop\

# Poora folder download/backup karna
adb pull /sdcard/Download/ C:\BackupFolder\
```

---

## 📱 App & Package Management (`pm`)
```bash
# APK install karna
adb install myapp.apk

# APK update/reinstall karna (data bacha kar)
adb install -r myapp.apk

# App uninstall karna
adb uninstall com.example.app

# Saari installed apps ki list
adb shell pm list packages

# Third-party (user installed) apps ki list
adb shell pm list packages -3

# System app uninstall/disable karna (No Root)
adb shell pm uninstall -k --user 0 com.facebook.system

# App ka Cache aur Data clear karna
adb shell pm clear com.example.app
```

---

## 🎮 Device Control & Inputs (`input` & `am`)
```bash
# Specific Screen coordinate par Tap karna
adb shell input tap 500 1200

# Text Type karna
adb shell input text "Hello-World"

# Swipe / Scroll (startX startY endX endY duration_ms)
adb shell input swipe 500 1500 500 500 300

# Hardware Keys Trigger:
adb shell input keyevent 26   # Power / Lock
adb shell input keyevent 3    # Home
adb shell input keyevent 4    # Back
adb shell input keyevent 24   # Volume UP
adb shell input keyevent 25   # Volume DOWN
adb shell input keyevent 27   # Camera Shutter (Photo click)
adb shell input keyevent 82   # Unlock Screen

# URL Chrome me open karna
adb shell am start -a android.intent.action.VIEW -d "http://localhost:5000"

# Phone Call lagana
adb shell am start -a android.intent.action.CALL -d tel:9876543210
```

---

## 🔍 Logs & Diagnostics
```bash
# Error logs dekhna
adb logcat *:E

# Chrome ke logs filter karna
adb logcat -s chromium

# Logs buffer saaf karna
adb logcat -c

# Battery details check karna
adb shell dumpsys battery

# RAM usage dekhna
adb shell dumpsys meminfo

# PC par live Screenshot save karna
adb exec-out screencap -p > screenshot.png

# Screen recording start karna (Ctrl+C to stop)
adb shell screenrecord /sdcard/screen.mp4
```

---

## 🔄 Reboot & Flashing
```bash
# Normal Reboot
adb reboot

# Recovery Mode
adb reboot recovery

# Bootloader / Fastboot Mode
adb reboot bootloader

# Sideload ROM / Update
adb sideload update.zip
```
