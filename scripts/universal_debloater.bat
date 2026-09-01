@echo off
title Universal Safe Android Debloater (By Rampravesh Kumar)
color 0C
echo ====================================================
echo   ??? Universal Safe Android Debloater (No Root) ???
echo   Created by: Rampravesh Kumar
echo ====================================================
echo.
echo WARNING: Yeh script popular safe bloatware ko remove karega.
echo Phone ko USB se connect karein with USB Debugging ON.
echo.
pause

echo.
echo [1] Removing Facebook Bloatware Services...
adb shell pm uninstall -k --user 0 com.facebook.katana 2>nul
adb shell pm uninstall -k --user 0 com.facebook.system 2>nul
adb shell pm uninstall -k --user 0 com.facebook.appmanager 2>nul
adb shell pm uninstall -k --user 0 com.facebook.services 2>nul

echo.
echo [2] Removing Lockscreen Ads (Glance / Carousel)...
adb shell pm uninstall -k --user 0 com.glance.internet 2>nul
adb shell pm uninstall -k --user 0 com.miui.android.fashiongallery 2>nul

echo.
echo [3] Removing Chinese Bloatware & Ad Trackers...
adb shell pm uninstall -k --user 0 com.transsion.carlcare 2>nul
adb shell pm uninstall -k --user 0 com.transsion.magicshow 2>nul
adb shell pm uninstall -k --user 0 com.transsion.palmpay 2>nul
adb shell pm uninstall -k --user 0 com.android.browser 2>nul

echo.
echo ====================================================
echo ?? Done! Faltu apps aur background tracking remove ho chuki hai!
echo Phone restart karke check karein.
echo ====================================================
echo.
pause
