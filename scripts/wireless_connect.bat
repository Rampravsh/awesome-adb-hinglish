@echo off
title Wireless ADB 1-Click Connector (By Rampravesh Kumar)
color 0A
echo ====================================================
echo   ? Wireless ADB One-Click Auto-Connector ?
echo   Created by: Rampravesh Kumar
echo ====================================================
echo.
echo [1/3] Checking connected USB device...
adb devices
echo.
echo [2/3] Enabling ADB TCP Mode on Port 5555...
adb tcpip 5555
timeout /t 2 /nobreak >nul
echo.
echo [3/3] Detecting Phone Wi-Fi IP Address...
for /f "tokens=9" %%a in ('adb shell ip route ^| findstr "wlan0"') do set PHONE_IP=%%a

if "%PHONE_IP%"=="" (
    echo [ERROR] Phone ka Wi-Fi IP nahi mil paya.
    echo Kripya ensure karein ki Phone aur PC same Wi-Fi par hain.
    set /p PHONE_IP="Manual IP Enter karein (e.g. 192.168.1.10): "
)

echo.
echo Connecting to %PHONE_IP%:5555 ...
adb connect %PHONE_IP%:5555
echo.
echo ====================================================
echo ?? Badhai ho! Ab aap USB Cable nikal sakte hain!
echo Phone Wi-Fi se wirelessly connect ho chuka hai.
echo ====================================================
echo.
pause
