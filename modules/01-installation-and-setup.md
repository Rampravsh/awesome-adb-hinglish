# 📖 Module 01: Installation & Setup Guide (Hinglish)

> **Bina Android Studio download kiye sirf 1 minute me ADB setup karein.**

---

## 🛠️ Step 1: Computer Setup

### Windows
PowerShell open karein aur run karein:
```powershell
winget install Google.PlatformTools
```
*Isse ~12 MB ka official package install hota hai aur `PATH` auto-configure ho jata hai.*

### macOS
```bash
brew install android-platform-tools
```

### Linux (Ubuntu/Debian)
```bash
sudo apt update && sudo apt install adb fastboot
```

---

## 📱 Step 2: Phone Setup

1. **Developer Options Enable karein:**
   - Phone Settings > **About Phone** me jayein.
   - **Build Number** (ya MIUI/HiOS/ColorOS version) par **7 baar lagatar tap** karein.
   - "You are now a developer" notification aayega.
2. **USB Debugging ON karein:**
   - Settings > **Developer Options** me jayein.
   - **USB Debugging** ko toggle ON karein.
3. **Connect & Authorize:**
   - USB cable se phone ko PC me lagayein.
   - Phone screen par **"Allow USB debugging?"** pop-up aayega.
   - **"Always allow from this computer"** par tick karein aur **Allow / OK** dabayein.

---

## ✅ Step 3: Test Connection

Terminal me type karein:
```bash
adb devices
```
**Expected Output:**
```plaintext
List of devices attached
0123456789ABCDEF    device
```
*(Agar `unauthorized` dikha raha hai, toh phone screen unlock karke pop-up allow karein).*
