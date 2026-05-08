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

:: ── 4. 빌더 HTML 파일 자동으로 브라우저에서 열기 ─────
echo  [시작] 브라우저에서 빌더를 여는 중...
start "" "%~dp0aladin_event_builder_v2.1.html"

:: ── 5. 이미지 업로드 서버 시작 (포트 5173) ───────────
echo  [서버] 이미지 업로드 서버 시작 (http://localhost:5173)
echo.
echo  ※ 이 창을 닫으면 이미지 업로드 기능이 중단됩니다.
echo  ※ 빌더 사용 중에는 창을 최소화해두세요.
echo.
npm start

pause
