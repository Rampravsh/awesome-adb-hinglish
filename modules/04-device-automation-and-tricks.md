# 📖 Module 04: Device Automation & Tricks

> **Touch clicks, auto typing, shortcuts aur mazedaar pranks.**

---

## 🖱️ 1. Screen Tap & Touch Simulate Karna

Aapke phone ki screen resolution ke hisaab se (e.g. 1080x2400):
```bash
# Center me tap karna
adb shell input tap 540 1200

# Long Press / Hold karna (Swipe with 0 movement)
adb shell input swipe 540 1200 540 1200 2000
```

---

## ⌨️ 2. Automated Text Typing
```bash
# Text type karna (Spaces ki jagah %s use karein)
adb shell input text "Namaste%sDosto"
```

---

## 🕹️ 3. Hardware Key Codes (KeyEvent Cheat-Sheet)
```bash
adb shell input keyevent 3    # HOME
adb shell input keyevent 4    # BACK
adb shell input keyevent 24   # Volume UP
adb shell input keyevent 25   # Volume DOWN
adb shell input keyevent 26   # POWER ON / OFF
adb shell input keyevent 27   # CAMERA SHUTTER (Photo Click)
adb shell input keyevent 66   # ENTER KEY
adb shell input keyevent 82   # MENU / UNLOCK
adb shell input keyevent 85   # PLAY / PAUSE MUSIC
```

---

## 🔋 4. Fake Battery Prank (Developer Simulation)
```bash
# Phone ki battery ko 1% dikhana
adb shell dumpsys battery set level 1

# Charging unplugged dikhana
adb shell dumpsys battery unplug

# Wapas original battery par reset karna
adb shell dumpsys battery reset
```
