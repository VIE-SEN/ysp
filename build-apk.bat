@echo off
title YSP APK Builder
cd /d "%~dp0android"
set "JAVA_HOME=%~dp0jdk-17.0.20.1"

echo ==================================================
echo  Building APK... first run downloads dependencies
echo  (android-32, build-tools, maven deps), be patient
echo ==================================================
echo.

call gradlew.bat assembleDebug --console=plain

echo.
if errorlevel 1 (
  echo [FAILED] Build error. Send the error above to your assistant.
) else (
  echo [SUCCESS] APK generated at:
  echo   %~dp0android\app\build\outputs\apk\debug\app-debug.apk
)
echo.
pause
