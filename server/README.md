# Aladin Event Builder - Local Server

알라딘 이벤트 빌더의 로컬 백엔드. 브라우저에서 드래그로 업로드한 이미지를 임시 폴더에 보관했다가, 확정 시 네트워크 공유와 로컬 백업 양쪽에 저장합니다.

## 실행 방법

```bash
cd server
npm install
npm start
```

개발 모드 (파일 변경 시 자동 재시작):
```bash
npm run dev
```

기본 포트: **5173**. 포트 변경은 `config.json`에서.

## 동작 흐름

```
[브라우저] 이미지 드래그앤드롭
    │
    ▼
POST /api/upload → server/images/temp/xxxx.jpg  (임시)
    │
    ▼
[사용자] 미리보기 확인 → 파일명 입력 → "업로드 확정"
    │
    ▼
POST /api/publish
    ├─→ \\192.168.15.155\Image\img\events\book\{year}\{quarter}\filename.jpg  (네트워크)
    └─→ server/images/published/{year}/{quarter}/filename.jpg                (로컬 백업)
    │
    ▼
응답: { webUrl: "//image.aladin.co.kr/img/events/book/2026/02/filename.jpg" }
    │
    ▼
[브라우저] URL 입력칸 자동 채움
```

## API

### `GET /api/health`
서버 상태 + 네트워크 공유 접근 가능 여부 확인.

```json
{
  "status": "ok",
  "networkAccessible": true,
  "networkShare": "\\\\192.168.15.155\\Image\\img\\events\\book",
  "tempDir": "...",
  "localBackup": "..."
}
```

### `POST /api/upload`
multipart/form-data, `file` 필드에 이미지.

```json
{
  "success": true,
  "tempId": "a1b2c3d4",
  "ext": ".jpg",
  "originalName": "screenshot.jpg",
  "size": 284521,
  "previewUrl": "/api/temp/a1b2c3d4.jpg"
}
```

### `GET /api/temp/:filename`
임시 업로드된 파일 미리보기.

### `POST /api/publish`
```json
// request
{
  "tempId": "a1b2c3d4",
  "ext": ".jpg",
  "filename": "260410_event_bg.jpg",
  "year": "2026",
  "quarter": "02"
}

// response
{
  "success": true,
  "webUrl": "//image.aladin.co.kr/img/events/book/2026/02/260410_event_bg.jpg",
  "finalName": "260410_event_bg.jpg",
  "wasRenamed": false,
  "networkSaved": true,
  "networkPath": "\\\\192.168.15.155\\Image\\img\\events\\book\\2026\\02\\260410_event_bg.jpg",
  "localBackupPath": ".../server/images/published/2026/02/260410_event_bg.jpg",
  "fallbackUsed": false
}
```

파일명이 이미 존재하면 자동으로 `_v2`, `_v3` ... 가 붙습니다 (`wasRenamed: true`).

네트워크 접근 실패 시 `fallbackUsed: true` 와 함께 로컬에만 저장됩니다.

### `GET /api/list/:year/:quarter`
해당 연도/분기의 published 파일 목록.

## 폴더 구조

```
server/
├── server.js           ← Express 서버
├── package.json
├── config.json         ← 포트, 네트워크 경로, 확장자 등
├── README.md
└── images/
    ├── temp/           ← 임시 업로드 (1시간 후 자동 삭제)
    └── published/      ← 발행된 이미지 (영구 저장)
        └── 2026/
            └── 02/
                └── 260410_event_bg.jpg
```

## 테스트 서버 이관 시

`server/` 폴더 통째로 대상 서버에 복사한 뒤:

```bash
cd server
npm install
node server.js
```

- `config.json`의 `corsOrigins` 를 해당 서버의 도메인으로 변경
- `networkShare` 경로는 이미 네트워크 UNC 경로이므로 그대로 사용 가능
- `images/published/` 가 함께 복사되므로 기존 이미지 유실 없음

## 트러블슈팅

**`networkAccessible: false`**
- 파일 탐색기에서 `\\192.168.15.155\Image` 접근되는지 확인
- `net use \\192.168.15.155\Image` 로 자격증명 저장 필요할 수 있음
- 네트워크 실패 시에도 `images/published/` 에는 저장됨 (fallback)

**포트 충돌**
- 5173이 Vite 등과 충돌하면 `config.json` 의 `port`를 3001 등으로 변경

**한글 파일명 저장 실패**
- 네트워크 공유의 인코딩이 이슈일 수 있음 → 영문 파일명 권장
