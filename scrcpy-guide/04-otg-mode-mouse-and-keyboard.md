# 📘 Chapter 04: OTG Mode Masterclass (Mouse & Keyboard Control) ⌨️🖱️

> **Bina screen mirror kiye apne PC ke Mouse aur Keyboard se phone chalayein — Full Escape Guide & Key Mappings.**

---

## 🚨 OTG Mode Kya Hai aur Mouse Kyun Lock Hota Hai?

Jab aap `scrcpy --otg` run karte hain:
- PC aapke Mouse aur Keyboard ko ek **Hardware USB HID Device** ki tarah phone me simulate karta hai.
- Isme video transmission nahi hota (Zero CPU & Zero Battery load).
- **Lekin cursor PC screen se gayab hokar phone me chala jata hai.**

---

## 🔓 Mouse Release & Escape Shortcut (BOHOT ZAROORI)

| Action | Shortcut Key |
| :--- | :--- |
| **Mouse ko Phone se Bahar nikal kar PC par lana** | 👉 **`Left Alt`** key ko **1 baar press** karein |
| **Mouse ko wapas Phone ke andar bhejna** | Terminal / scrcpy window par click karein |
| **OTG Mode ko poora Exit (Band) karna** | Terminal me **`Ctrl + C`** dabayein ya `Alt + F4` |

> *Tip: Kabhi bhi USB cable nikalne ki zaroorat nahi hai, sirf `Left Alt` dabayein!*

---

## 🖱️ Mouse Key Controls in OTG Mode
* **Left Click**: Screen par Tap / Touch karna.
* **Right Click**: ⬅️ **Back Button** (`KEYCODE_BACK`).
* **Middle Click (Scroll Wheel Click)**: 🏠 **Home Button** (`KEYCODE_HOME`).
* **Scroll Wheel Up / Down**: Page ko smooth scroll karna.
* **Side Buttons (Gaming Mouse)**: 📑 App Switcher / Recent Apps kholna.

---

## ⌨️ Keyboard Key Controls in OTG Mode
| Keyboard Key | Phone me Action |
| :--- | :--- |
| **`Esc`** | ⬅️ Back Button |
| **`Windows` Key** | 🏠 Home Screen / Assistant |
| **`Alt + Tab`** | 📑 Recent Apps / App Switcher |
| **`PrintScreen`** | 📸 Screenshot Capture |
| **`Ctrl + C` / `Ctrl + V`** | Text Copy / Paste |
| **`Ctrl + A`** | Select All Text |
| **`Volume Up / Down / Mute`** | Phone Audio Volume Control |
| **`Play / Pause / Next / Prev`** | Media Control |
| **`Sleep` / `Power` Key** | Phone Screen Lock / Unlock |
| **`Enter`** | Form submit ya Message Send |

---

## ⚡ Command:
```bash
scrcpy --otg
```
