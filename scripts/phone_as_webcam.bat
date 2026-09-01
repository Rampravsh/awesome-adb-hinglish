@echo off
title Phone as HD PC Webcam (By Rampravesh Kumar)
color 0E

:WEBCAM_MENU
cls
echo ================================================================
echo   ?? 1-Click Phone HD Webcam Launcher (With Rotation Support) ??
echo   Created by: Rampravesh Kumar
echo ================================================================
echo.
echo   [1] Back Camera - Horizontal / Landscape (1920x1080 for YouTube/OBS)
echo   [2] Back Camera - Vertical / Portrait (1080x1920 for Reels/Shorts/Zoom)
echo   [3] Front Camera - Horizontal / Landscape
echo   [4] Front Camera - Vertical / Portrait (Selfie Mode)
echo   [5] Custom Rotation Mode (0, 90, 180, 270 degrees)
echo.
echo   ?? TIP: Window open hone par aap 'Alt + r' dabakar bhi rotate kar sakte hain!
echo.
echo ================================================================
set /p CAMCHOICE="Camera & Rotation Select karein [1-5]: "

if "%CAMCHOICE%"=="1" (
    echo Starting Back Camera Landscape (1920x1080)...
    scrcpy --video-source=camera --camera-size=1920x1080 --camera-fps=60
)
if "%CAMCHOICE%"=="2" (
    echo Starting Back Camera Portrait / Vertical (1080x1920)...
    scrcpy --video-source=camera --camera-size=1920x1080 --orientation=90
)
if "%CAMCHOICE%"=="3" (
    echo Starting Front Camera Landscape...
    scrcpy --video-source=camera --camera-facing=front --camera-size=1920x1080
)
if "%CAMCHOICE%"=="4" (
    echo Starting Front Camera Portrait / Vertical (Selfie)...
    scrcpy --video-source=camera --camera-facing=front --camera-size=1920x1080 --orientation=90
)
if "%CAMCHOICE%"=="5" (
    set /p DEG="Degree enter karein (0, 90, 180, ya 270): "
    scrcpy --video-source=camera --orientation=%DEG%
)

pause
