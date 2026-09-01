# 📖 Module 02: Wireless Debugging Guide (Bina Cable ke)

> **Ek baar setup karein aur phone ko room me kahin bhi rakh kar Wi-Fi se control karein.**

---

## 🔌 Requirements:
- Phone aur PC **same Wi-Fi network** par connect hone chahiye.
- Pehli baar connection ke liye USB cable chahiye (sirf 1 baar port open karne ke liye).

---

## ⚡ Step-by-Step Wireless Setup:

1. **Phone ko USB cable se PC me connect karein.**
2. **TCP Port 5555 enable karein:**
   ```bash
   adb tcpip 5555
   ```
   *Output: `restarting in TCP mode port: 5555`*

3. **Phone ka Wi-Fi IP Address pata karein:**
   - *Option A (Command se):*
     ```bash
     adb shell ip route
     ```
   - *Option B (Phone Settings se):*
     Settings > Wi-Fi > Connected Wi-Fi details me **IP Address** dekhein (e.g. `192.168.1.15`).

4. **Phone ko Wi-Fi se Connect karein:**
   ```bash
   adb connect 192.168.1.15:5555
   ```
   *Output: `connected to 192.168.1.15:5555`*

5. **Ab USB Cable nikal dein! 🎉**
   Test karein:
   ```bash
   adb devices
   ```

---

## 🛑 Wireless Connection Disconnect Karna:
```bash
adb disconnect
```
