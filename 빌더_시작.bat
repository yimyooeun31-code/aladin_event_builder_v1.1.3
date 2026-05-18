@echo off
title Aladin Event Builder

echo.
echo  ======================================
echo    Aladin Event Builder v2.1 Start
echo  ======================================
echo.

:: Node.js check
where node >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Node.js is not installed.
    echo Please install from https://nodejs.org ^(LTS version^)
    echo.
    pause
    exit /b 1
)

:: Set paths
set "SERVER_DIR=%~dp0server"
set "HTML_FILE=%~dp0aladin_event_builder_v2.1.html"

:: Move to server folder and install if needed
cd /d "%SERVER_DIR%"
if not exist node_modules (
    echo [INSTALL] Installing npm packages...
    npm install
    if %ERRORLEVEL% neq 0 (
        echo [ERROR] npm install failed.
        pause
        exit /b 1
    )
)

:: Start server in new window
start "Aladin Upload Server" cmd /k "cd /d "%SERVER_DIR%" && if not exist node_modules npm install && npm start"

:: Wait for server
ping 127.0.0.1 -n 3 >nul

:: Open builder via PowerShell (most reliable)
echo [OPEN] Opening builder...
powershell -command "Start-Process '%HTML_FILE%'"

echo.
echo  Server is running in the other window.
echo  You can close this window.
echo.
ping 127.0.0.1 -n 4 >nul
