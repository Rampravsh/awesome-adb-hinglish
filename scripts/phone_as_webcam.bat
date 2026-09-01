@echo off
title Phone as HD PC Webcam (By Rampravesh Kumar)
color 0E
echo ====================================================
echo   ?? 1-Click Phone HD Webcam Launcher ??
echo   Created by: Rampravesh Kumar
echo ====================================================
echo.
echo Phone ko USB se connect karein.
echo.
echo [1] Back Camera (Ultra HD 1080p 60FPS - Recommended)
echo [2] Front Camera (Selfie Mode)
echo.
set /p CAMCHOICE="Camera Select karein [1 ya 2]: "

if "%CAMCHOICE%"=="2" (
    echo Starting Front Camera Webcam...
    scrcpy --video-source=camera --camera-facing=front --camera-size=1920x1080
) else (
    echo Starting Back Camera HD Webcam...
    scrcpy --video-source=camera --camera-size=1920x1080 --camera-fps=60
)
