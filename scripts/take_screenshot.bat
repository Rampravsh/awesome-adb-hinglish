@echo off
title 1-Click Phone Screenshot Tool
color 0B
echo ====================================================
echo   ?? 1-Click ADB Screenshot Saver ??
echo   Created by: Rampravesh Kumar
echo ====================================================
echo.

set TIMESTAMP=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set TIMESTAMP=%TIMESTAMP: =0%
set FILENAME=%USERPROFILE%\Desktop\phone_screen_%TIMESTAMP%.png

echo Capturing Phone Screen...
adb exec-out screencap -p > "%FILENAME%"

if exist "%FILENAME%" (
    echo.
    echo ? Screenshot saved successfully on Desktop:
    echo %FILENAME%
) else (
    echo.
    echo ? Error: Screenshot capture nahi ho paya. Check adb connection.
)

echo.
pause
