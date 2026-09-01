# 📖 Module 06: Troubleshooting & Error Fixes

> **Sabse aam ADB errors aur unka 1-minute solution.**

---

## ❌ Error 1: `adb : The term 'adb' is not recognized`
* **Wajah:** ADB install nahi hai ya Windows PATH me add nahi hai.
* **Solution:**
  ```powershell
  winget install Google.PlatformTools
  ```
  Terminal band karke dobara open karein.

---

## ❌ Error 2: `device unauthorized`
* **Wajah:** Phone screen par USB debugging ki RSA key allow nahi hui hai.
* **Solution:**
  1. Phone screen unlock karein.
  2. "Always allow from this computer" par tick karke **Allow** dabayein.
  3. Agar pop-up na aaye: Phone Settings > Developer Options > **"Revoke USB debugging authorizations"** karein aur cable dobara lagayein.

---

## ❌ Error 3: `device offline`
* **Solution:**
  ```bash
  adb kill-server
  adb start-server
  adb devices
  ```

---

## ❌ Error 4: `adb reverse failed / cannot bind to port`
* **Wajah:** Port pehle se kisi aur process dwara use ho raha hai.
* **Solution:**
  ```bash
  adb reverse --remove-all
  adb reverse tcp:5000 tcp:5000
  ```
