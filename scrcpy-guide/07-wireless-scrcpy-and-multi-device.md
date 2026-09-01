# 📘 Chapter 07: Wireless scrcpy & Multi-Device Control 📡📱📱

> **Bina USB cable ke Wi-Fi se screen mirror karna aur ek sath multiple phones control karna.**

---

## 📡 1. Wireless scrcpy Setup (Wi-Fi Mode)

### Requirements:
- Phone aur PC **same Wi-Fi router / hotspot** se connect hone chahiye.

### Steps:
1. **USB cable connect karke TCP Port enable karein:**
   ```bash
   adb tcpip 5555
   ```
2. **Phone ka IP pata karke connect karein:**
   ```bash
   adb connect 192.168.1.XX:5555
   ```
3. **USB cable unplug kar dein!**
4. **Wireless scrcpy launch karein:**
   ```bash
   scrcpy --video-bit-rate=8M --max-size=1080
   ```

---

## 📱📱 2. Multiple Devices ek sath PC par Chalana

Agar aapke paas 2 ya 3 phones connected hain:

1. **Connected devices ke Serial numbers dekhein:**
   ```bash
   adb devices
   ```
   *Output:*
   ```plaintext
   1032231387114408    device
   192.168.1.15:5555   device
   ```

2. **Har phone ke liye alag terminal me command chalayein:**
   - Phone 1:
     ```bash
     scrcpy --serial=1032231387114408 --window-title="Phone 1 (Infinix)"
     ```
   - Phone 2:
     ```bash
     scrcpy --serial=192.168.1.15:5555 --window-title="Phone 2 (Realme)"
     ```

Aapke PC screen par dono phones ki alag-alag windows khul jayengi jinhe aap parallel chala sakte hain!
