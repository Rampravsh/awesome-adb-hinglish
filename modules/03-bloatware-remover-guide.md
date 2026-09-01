# 📖 Module 03: Bloatware Remover Master Guide (No Root)

> **Phone se faltu pre-installed apps, lockscreen ads aur spyware ko permanently disable karein.**

---

## 💡 Bloatware hatane ki Magic Command

```bash
adb shell pm uninstall -k --user 0 <PACKAGE_NAME>
```
*Yeh command phone ke core system partition ko bina chhede current user profile (`user 0`) ke liye us app ko completely disable aur remove kar deti hai.*

---

## 🔍 Phone me Package Name Kaise Dhoondhein?

1. **Saari installed apps dekhna:**
   ```bash
   adb shell pm list packages
   ```
2. **Kisi specific brand/app ko filter karna:**
   ```bash
   adb shell pm list packages | findstr "facebook"
   adb shell pm list packages | findstr "glance"
   ```

---

## 🗑️ Brand-Wise Safe Bloatware List:

### 1. Xiaomi / Redmi / POCO (MIUI / HyperOS)
```bash
# GetApps Store
adb shell pm uninstall -k --user 0 com.xiaomi.mipicks
# Glance Lockscreen Wallpaper Ads
adb shell pm uninstall -k --user 0 com.miui.android.fashiongallery
# Mi Browser
adb shell pm uninstall -k --user 0 com.android.browser
# Analytics & Ad Daemon
adb shell pm uninstall -k --user 0 com.miui.analytics
adb shell pm uninstall -k --user 0 com.miui.msa.global
```

### 2. Realme / Oppo (ColorOS / RealmeUI)
```bash
# App Market
adb shell pm uninstall -k --user 0 com.heytap.market
# Lockscreen Magazine Ads
adb shell pm uninstall -k --user 0 com.heytap.pictorial
# Hot Apps & Hot Games
adb shell pm uninstall -k --user 0 com.oppo.market
```

### 3. Infinix / Tecno (XOS / HiOS)
```bash
# Palm Store
adb shell pm uninstall -k --user 0 com.transsion.palmpay
# Carlcare
adb shell pm uninstall -k --user 0 com.transsion.carlcare
# Aha Games
adb shell pm uninstall -k --user 0 com.transsion.magicshow
```

---

## 🔄 Agar koi App galti se delete ho jaye toh Reinstall kaise karein?
```bash
adb shell cmd package install-existing <PACKAGE_NAME>
```
