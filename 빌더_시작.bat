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

:: ── 2. 경로 변수 저장 ─────────────────────────────────
set "ROOT_DIR=%~dp0"
set "SERVER_DIR=%~dp0server"
set "HTML_FILE=%~dp0aladin_event_builder_v2.1.html"

:: ── 3. 서버 폴더에서 npm install ──────────────────────
cd /d "%SERVER_DIR%"

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

:: ── 4. 서버 별도 창으로 시작 (npm install 포함) ───────
echo  [서버] 이미지 업로드 서버 시작 중...
start "Aladin Upload Server" cmd /k "cd /d "%SERVER_DIR%" && if not exist node_modules npm install && npm start"

:: ── 5. 서버 뜰 때까지 잠깐 대기 ──────────────────────
timeout /t 2 /nobreak >nul

:: ── 6. 브라우저에서 빌더 열기 ─────────────────────────
echo  [시작] 브라우저에서 빌더를 여는 중...
explorer "%HTML_FILE%"

echo.
echo  ╔══════════════════════════════════════╗
echo  ║  서버가 별도 창에서 실행 중입니다.   ║
echo  ║  이 창은 닫아도 됩니다.              ║
echo  ╚══════════════════════════════════════╝
echo.
timeout /t 3 /nobreak >nul
