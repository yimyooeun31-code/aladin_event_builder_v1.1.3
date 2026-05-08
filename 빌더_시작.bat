@echo off
chcp 65001 >nul
title 알라딘 이벤트 빌더

echo.
echo  ╔══════════════════════════════════════╗
echo  ║    알라딘 이벤트 빌더 v2.1 시작      ║
echo  ╚══════════════════════════════════════╝
echo.

:: ── 1. Node.js 설치 확인 ──────────────────────────────
where node >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo  [오류] Node.js가 설치되어 있지 않습니다.
    echo.
    echo  설치 방법:
    echo    1. https://nodejs.org 접속
    echo    2. LTS 버전 다운로드 후 설치
    echo    3. 설치 완료 후 이 파일 다시 실행
    echo.
    pause
    exit /b 1
)

:: ── 2. 서버 폴더로 이동 ───────────────────────────────
cd /d "%~dp0server"

:: ── 3. node_modules 없으면 자동 설치 ─────────────────
if not exist node_modules (
    echo  [설치] npm 패키지 설치 중... 잠시만 기다려주세요.
    echo.
    npm install
    if %ERRORLEVEL% neq 0 (
        echo.
        echo  [오류] npm install 실패. 인터넷 연결을 확인해주세요.
        pause
        exit /b 1
    )
    echo.
)

:: ── 4. 이미지 업로드 서버 백그라운드로 먼저 시작 ──────
echo  [서버] 이미지 업로드 서버 시작 중...
start "Aladin Upload Server" cmd /k "cd /d "%~dp0server" && npm start"

:: ── 5. 서버 뜨는 시간 잠깐 대기 ─────────────────────
timeout /t 2 /nobreak >nul

:: ── 6. 빌더 HTML을 브라우저에서 열기 ─────────────────
echo  [시작] 브라우저에서 빌더를 여는 중...
explorer "%~dp0aladin_event_builder_v2.1.html"

echo.
echo  ╔══════════════════════════════════════╗
echo  ║  서버가 별도 창에서 실행 중입니다.   ║
echo  ║  이 창은 닫아도 됩니다.              ║
echo  ╚══════════════════════════════════════╝
echo.
timeout /t 3 /nobreak >nul
