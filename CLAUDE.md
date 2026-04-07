# Aladin Monly Template Event Module Builder - Harnessing Rules

> 이 문서는 알라딘 이벤트 빌더 프로젝트의 절대 원칙입니다.
> 모든 작업에서 이 규칙을 자동으로 검토한 뒤 코드를 출력합니다.

---

## 1. 디자인 & UI 컨벤션

### 1.1 알라딘 브랜드 컬러 (디자인 가이드 기준)

| 용도 | 컬러 | HEX |
|------|------|-----|
| Primary (포인트) | Aladin Pink | `#EB217C` |
| Primary Dark (호버) | | `#D41A6F` |
| Secondary (보조 액션) | Lamp Blue | `#3B4A9F` |
| Link | | `#276FF4` |
| Danger | | `#E81D30` |
| Success | | `#228738` |
| Warning | | `#F4BE1E` |
| 배경 | Gray 5 | `#F5F5F5` |
| 보더 | | `#E8E8E8` |
| 텍스트 (기본) | Gray 80 | `#333333` |
| 텍스트 (보조) | Gray 50 | `#737373` |
| 박스 배경 | | `#FFFFFF` |

### 1.2 UI 스타일 원칙 (토스 참고)

- **배경**: 깔끔한 단색 (`#F5F5F5`), 그라데이션/블롭 애니메이션 사용하지 않음
- **패널**: 순수 화이트, 글래스모피즘(blur, 반투명) 사용하지 않음
- **보더**: 회색 `#E8E8E8` 단일 컬러, 보라색/핑크색 보더 사용하지 않음
- **라운드**: `8px ~ 12px` (과도한 라운드 16px+ 지양)
- **그림자**: 최소한 또는 없음 (`0 1px 3px rgba(0,0,0,0.04)` 수준)
- **버튼**: 단색 + 미니멀, 그라데이션 버튼 사용하지 않음
- **선택 카드**: 선택 시 포인트 컬러 보더만, 과도한 배경색 변화 없음
- **토스트**: 다크 단색 (`#333333`)

### 1.3 여백 시스템

- 패널 패딩: `24px`
- 탭 콘텐츠 패딩: `28px`
- 섹션 간격: `20px`
- 입력 필드 간격: `14px ~ 22px`
- 버튼 높이: 일반 `42px ~ 48px`, 소형 `36px`

### 1.4 버튼 계층

| 계층 | 스타일 | 용도 |
|------|--------|------|
| Primary | 핑크 `#EB217C` 단색 | 주요 액션 (코드 추가) |
| Secondary | 네이비 `#3B4A9F` 단색 | 수정하기, 다음 |
| Final | 검정 `#333333` 단색 | 최종 액션 (완성 코드 내보내기) |
| Reset | 흰색 + 회색 보더 | 초기화, 이전 |
| Copy/보조 | 연한 배경 + 보더 | 프롬프트 복사, 전체 복사 |

### 1.5 탭 구조

- **메인 탭** (2개): 상단이미지 / 컨텐츠 — 16px, bold 700, 검정 활성, 3px 하단선
- **서브 탭** (7개): 작가/신간/배너/증정품/쿠폰/도서/댓글 — 14px, 600, 핑크 활성, 2px 하단선
- 메인 탭이 서브 탭보다 시각적 위계가 높아야 함

### 1.6 하단 고정 액션 영역 원칙

- **액션 버튼은 하단 한 곳에만 존재** (글로벌 스탠다드)
- 같은 역할의 버튼이 화면에 두 곳에 있으면 안 됨
- 상단이미지 탭 ↔ 컨텐츠 탭 전환 시 하단 버튼 텍스트/onclick 자동 전환
- 위자드 내부 네비게이션(이전/다음)은 `position: sticky; bottom: 0`으로 스크롤해도 보이게

---

## 2. CSS/코드 작법

### 2.1 CSS 체계

- **알라딘 CSS 우선**: `mOnly.css`, `template_v2.css`, `swiper@12`, `comment2019.css` 등 알라딘 실서버 CSS를 활용
- **CSS 변수 사용**: `:root`에 정의된 변수 사용 (`--primary`, `--border`, `--text` 등)
- **BEM 네이밍 아님**: 알라딘 기존 클래스명 체계 따름 (`monly_`, `book_type`, `gift_`, `coupon_` 등)
- **인라인 스타일 최소화**: 빌더 자체 UI에서는 CSS 클래스 사용 권장

### 2.2 미리보기 치환 원칙 (절대 규칙)

| 상황 | 방식 | 이유 |
|------|------|------|
| 알라딘 CSS가 처리하는 영역 | HTML만, 인라인 스타일 X | CSS가 이미 있으니까 |
| 알라딘 CSS가 있지만 iframe에서 안 먹히는 경우 | 인라인 스타일 유지 | 부모 컨텍스트 의존 |
| 알라딘 CSS에 아예 없는 더미 영역 | 인라인 스타일 유지 | 참조할 CSS 없음 |

**판단 기준**: 인라인 제거 후 미리보기에서 정상 표시되면 제거, 깨지면 유지.
**동작하는 코드는 건드리지 않는다.**

### 2.3 모듈별 코드 생성 패턴

새 모듈 추가 시 수정해야 할 곳:
1. **HTML**: 탭 버튼 + 탭 콘텐츠 영역
2. **MODULE_DATA**: 모듈 ID, 이름, inputs 배열
3. **getInputMeta()**: 각 입력 필드의 label, example, defaultValue
4. **isTextarea 배열**: textarea로 처리할 필드 추가
5. **renderDirectInputs()**: 특수 UI가 필요한 경우 분기 추가
6. **generateModuleCode()**: 코드 생성 로직
7. **resetAll()**: 초기화 대상에 추가

### 2.4 코드 생성 시 HTML 구조

```
[DEFAULT_HEADER]
  <%@ ... %> 헤더들 + CSS/JS 링크
  <article class="event-wrap">     ← 헤더에서 항상 열림

[상단이미지 코드]
  <style>...</style>
  <div class="monly_top">...</div>
  <div class="monly_basic_wrap">   ← 여기서 열림

[컨텐츠 모듈들]
  (monly_basic_wrap 안에 계속 추가)
  <!-- ⚠️ 진행중 주석 -->

[완성 코드 내보내기]
  </div><!-- monly_basic_wrap -->
  </article>
  <!-- // 이벤트 끝 -->
```

### 2.5 텍스트 표기법

| 표기 | 변환 결과 | 용도 |
|------|----------|------|
| `/br` | `<span class="br">` | 모바일 줄바꿈 (PC에서는 inline) |
| `/br2` | `<span class="br2">` | PC 줄바꿈 (모바일에서는 inline) |
| `{텍스트}` | `<span class="t_pink">` | 핑크 강조 (`#eb217c`) |

---

## 3. 알라딘 서버 구조

### 3.1 파일 구조

- 작업 경로: `\\stagenew\ucl_editor\events\book\`
- 파일 형식: `.ascx` (ASP.NET User Control)
- 인코딩: EUC-KR (네트워크 드라이브에서 읽을 때 한글 깨짐 주의)

### 3.2 서버 컨트롤 (uc1 태그)

| 태그 | 용도 | Register 경로 |
|------|------|--------------|
| `wa_item_info_list` | 도서 리스트 (CID) | `~/ucl/itemview/list/` |
| `wa_item_info` | 개별 도서 | `~/ucl/itemview/` |
| `wa_coupondown_btn` | 쿠폰 다운로드 | `~/ucl/coupon/` |
| `alarm` | 신간알리미 (7종) | `/ucl/m/Event/m_Event_NewAlarm.ascx` |
| `EventComment` | 댓글 (v3) | `/ucl/events/eventComment/` |
| `wa_RandomTab` | 랜덤 탭 | `~/ucl_editor/events/` |

### 3.3 이미지 경로 컨벤션

- 기본 경로: `//image.aladin.co.kr/img/events/book/{년도}/{분기}/`
- 분기 계산: 1~3월=01, 4~6월=02, 7~9월=03, 10~12월=04
- `getImageBasePath()` 함수로 자동 생성
- `//` (protocol-relative) → 미리보기에서 `https://`로 변환 필요

### 3.4 CSS/JS 경로 (실서버 기준)

```
/ucl_editor/events/css/swiper@12/swiper-bundle.min.css
/ucl_editor/events/css/mOnly.css
/ucl_editor/events/css/template_v2.css
/ucl_editor/events/css/comment2019.css
/ucl_editor/events/js/swiper@12/swiper-bundle.min.js
/ucl_editor/events/js/mOnly.js
/js/jquery-1.8.3.min.js
```

### 3.5 미리보기 iframe 구조

```html
<div id="pEventType9">
  <div id="container" class="event_container">
    <!-- 생성된 코드 -->
  </div>
</div>
```

- 사이트 기본 CSS의 파란색 오버라이드: `.event_container` 내 `color: inherit`
- 단, `.t_pink`, `.b-txt`, `.btn a` 등은 예외 처리 필요

### 3.6 Swiper 버전

- **실서버**: `swiper@12` (최신)
- Swiper 컨테이너: `<div class="swiper giftswiper">` (v12 기준)
- 구버전 `swiper-container` 클래스 사용하지 않음

---

## 4. 자가 반성 (Error Patterns)

### 4.1 반복된 실수 목록

| # | 실수 | 원인 | 해결책 |
|---|------|------|--------|
| 1 | 인라인 스타일과 CSS 중복 적용 | 초기에 인라인으로 만들고, 나중에 CSS 추가하면서 인라인 미삭제 | **치환 원칙 2.2 준수** |
| 2 | `color: inherit` 오버라이드가 알라딘 CSS를 덮어씀 | `.event_container span/a` 전체에 inherit 적용 | **특수 클래스 예외 처리** (`.t_pink`, `.btn a` 등) |
| 3 | `event.currentTarget` 사용으로 onclick 동작 안 함 | HTML onclick 속성에서 event 객체 접근 불안정 | **`this`를 파라미터로 전달** + `.closest()` 사용 |
| 4 | 하단 고정 버튼 구조 복잡화 → 코드 꼬임 | actionAreaTop/actionAreaContent 분리하면서 상태 관리 복잡 | **하단 버튼 한 곳 통합**, `switchMainTab`에서 텍스트/onclick만 전환 |
| 5 | Swiper 경로 불일치 | 빌더 기본값이 구버전 경로 사용 | **실서버 `.ascx` 파일 기준으로 검증** |
| 6 | `var swiper` 중복 선언 | SCRIPT_FULL에서 같은 변수명 3번 사용 | **forEach 루프로 통합** |
| 7 | `.monly_top` 관련 선택자가 하위 요소까지 잡힘 | `[class^="monly_top"]`이 `monly_top_tit`까지 매칭 | **정확한 클래스명 지정** (`.monly_top, .monly_top3, .monly_top4`) |
| 8 | 위자드 스텝 전환 후 하단 버튼 미초기화 | `wizardShowStep` 호출 시 하단 버튼 onclick 미설정 | **HTML onclick 제거 + JS에서만 제어** 또는 **위자드 내부 버튼 유지** |
| 9 | textarea vs input 혼동 | 줄바꿈 필요한 필드에 input 사용 | **`/br` 표기법 도입**으로 input 한 줄에서 해결 |
| 10 | PC 미디어쿼리 값 하드코딩 | `930px`, `1400px` 등 고정값 | **이미지 naturalWidth 자동 감지** |

### 4.2 디자인 오차 패턴

| # | 오차 | 해결 |
|---|------|------|
| 1 | 버튼 색상이 너무 다양 (핑크+빨강+네이비+보라+하늘+핑크) | 알라딘 컬러 가이드 한 톤으로 통일 |
| 2 | 같은 역할 버튼이 화면 두 곳에 존재 | 글로벌 스탠다드: 하단 한 곳 통합 |
| 3 | 원형 글래스 박스가 타원형으로 렌더링 | `width: 80%` + `border-radius: 50%` → `width: auto` + flex 중앙정렬 |
| 4 | `padding-top`으로 수직 정렬 시도 | `display: flex; align-items: center` + `padding-bottom`으로 ::after 보정 |

---

## 5. 미래 대응 체크리스트

### 5.1 새 모듈 추가 시

- [ ] MODULE_DATA에 모듈 정의 추가
- [ ] getInputMeta()에 필드 메타 추가 (defaultValue 포함)
- [ ] isTextarea 배열에 textarea 필드 추가
- [ ] renderDirectInputs()에 특수 UI 분기 추가 (필요시)
- [ ] generateModuleCode()에 코드 생성 로직 추가
- [ ] resetAll()에 초기화 대상 추가
- [ ] 서브 탭 버튼 + 탭 콘텐츠 HTML 추가
- [ ] 미리보기 치환이 필요한 서버 컨트롤이 있는지 확인
- [ ] 기본값에 이미지 경로가 있으면 `IMG_BASE` 또는 `B` 변수 사용

### 5.2 미리보기 치환 추가 시

- [ ] 알라딘 CSS에 해당 스타일이 있는지 확인
- [ ] 있으면 → 깨끗한 HTML만 출력 (인라인 스타일 X)
- [ ] 없거나 iframe에서 안 먹히면 → 인라인 스타일 사용
- [ ] `.event_container` 오버라이드와 충돌하는지 확인
- [ ] 충돌하면 `:not()` 또는 `!important`로 예외 처리

### 5.3 코드 생성 시

- [ ] `<article class="event-wrap">`은 DEFAULT_HEADER에 포함 (중복 생성 금지)
- [ ] `<div class="monly_basic_wrap">`은 상단이미지에서 열림 (중복 생성 금지)
- [ ] 닫기 태그는 "완성 코드 내보내기"에서만 추가
- [ ] Swiper 클래스: `swiper` (v12), `swiper-container` 사용 금지
- [ ] pagination: 단일 증정품 = `clickable`, 다중 = `type: "fraction"`
- [ ] 이미지 경로: `//` → 미리보기에서 `https://` 변환 확인
- [ ] CSS `url(//...)` 패턴도 변환 확인

### 5.4 UI 수정 시

- [ ] 알라딘 디자인 가이드 컬러 준수
- [ ] 버튼 계층 (Primary > Secondary > Final > Reset) 유지
- [ ] 하단 액션 버튼은 한 곳에만 존재
- [ ] 동작하는 코드는 건드리지 않는다
- [ ] 수정 전후 미리보기에서 시각적 확인

---

## 6. 프로젝트 구조

```
event_builder_v1.1.3/
├── aladin_event_builder_v1.1.3.html    ← 메인 빌더 (단일 HTML)
├── CLAUDE.md                            ← 이 문서 (하네싱 규칙)
├── 업데이트내역_v1.1.3.docx             ← 업데이트 문서
└── 참고파일/
    ├── 2024_book_type1~11.ascx          ← 이벤트 템플릿 참고
    ├── csv/                             ← MD용 가이드 CSV
    └── 프롬포트/                         ← AI 프롬프트 예시 이미지
```

---

*최종 업데이트: 2026-04-07*
