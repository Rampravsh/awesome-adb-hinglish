@echo off
title scrcpy Master Hub - 1-Click Launcher (By Rampravesh Kumar)
color 0B

:MENU
cls
echo ================================================================
echo   ?? scrcpy Master Launcher & Control Hub ??
echo   Created by: Rampravesh Kumar (https://github.com/Rampravsh)
echo ================================================================
echo.
echo   [1] Standard Screen Mirroring (Default)
echo   [2] ? High-FPS Gaming Mode (120 FPS + Low Latency + Screen-Off)
echo   [3] ?? Battery Saver Mode (Mirroring ON, Phone Screen OFF)
echo   [4] ?? HD Webcam Mode (Back Camera 1080p 60FPS)
echo   [5] ?? Selfie Webcam Mode (Front Camera)
echo   [6] ?? Wireless Screen Mirroring (Auto Wi-Fi)
echo   [7] ?? Record Phone Screen to MP4 on Desktop
echo   [8] ?? OTG Mode (Control Phone with Mouse/Keyboard only)
echo   [9] ??? Install / Update scrcpy via winget
echo   [0] Exit
echo.
echo ================================================================
set /p CHOICE="Apna Option Chuniye [0-9]: "

if "%CHOICE%"=="1" goto STANDARD
if "%CHOICE%"=="2" goto GAMING
if "%CHOICE%"=="3" goto BATTERY_SAVER
if "%CHOICE%"=="4" goto WEBCAM_BACK
if "%CHOICE%"=="5" goto WEBCAM_FRONT
if "%CHOICE%"=="6" goto WIRELESS
if "%CHOICE%"=="7" goto RECORD
if "%CHOICE%"=="8" goto OTG
if "%CHOICE%"=="9" goto INSTALL
if "%CHOICE%"=="0" exit

echo Invalid choice! Dobara try karein.
timeout /t 2 >nul
goto MENU

:STANDARD
echo.
echo Starting Standard Screen Mirroring...
scrcpy --stay-awake
goto MENU

:GAMING
echo.
echo Starting Gaming Mode (120 FPS, 16M Bitrate, Screen-Off)...
scrcpy --max-size=1080 --max-fps=120 --video-bit-rate=16M --turn-screen-off --stay-awake
goto MENU

:BATTERY_SAVER
echo.
echo Starting Battery Saver Mirroring (Phone Display OFF)...
scrcpy --turn-screen-off --stay-awake
goto MENU

:WEBCAM_BACK
echo.
echo Starting HD Back Camera Webcam Mode...
scrcpy --video-source=camera --camera-size=1920x1080 --camera-fps=60
goto MENU

:WEBCAM_FRONT
echo.
echo Starting Selfie Front Camera Webcam Mode...
scrcpy --video-source=camera --camera-facing=front --camera-size=1920x1080
goto MENU

:WIRELESS
echo.
echo Setting up Wireless ADB...
adb tcpip 5555
timeout /t 2 /nobreak >nul
for /f "tokens=9" %%a in ('adb shell ip route ^| findstr "wlan0"') do set PHONE_IP=%%a
if "%PHONE_IP%"=="" (
    set /p PHONE_IP="Phone ka Wi-Fi IP daalein (e.g. 192.168.1.10): "
)
echo Connecting to %PHONE_IP%:5555 ...
adb connect %PHONE_IP%:5555
echo.
echo Ab USB cable nikal sakte hain! Starting Wireless scrcpy...
scrcpy --max-size=1080 --video-bit-rate=8M
goto MENU

:RECORD
echo.
set TIMESTAMP=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set TIMESTAMP=%TIMESTAMP: =0%
set RECPATH=%USERPROFILE%\Desktop\phone_recording_%TIMESTAMP%.mp4
echo Recording video to: %RECPATH%
echo (Band karne ke liye window close karein ya Ctrl+C dabayein)
scrcpy --record="%RECPATH%"
goto MENU

:OTG
echo.
echo Starting OTG Mode (Mouse & Keyboard control)...
scrcpy --otg
goto MENU

:INSTALL
echo.
echo Installing scrcpy via winget...
winget install Genymobile.scrcpy
pause
goto MENU
