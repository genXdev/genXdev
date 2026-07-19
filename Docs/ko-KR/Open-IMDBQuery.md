# Open-IMDBQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `imdb

## Synopsis

> 웹 브라우저에서 IMDB 검색어를 엽니다.

## Description

웹 브라우저에서 "Internet Movie Database" 검색을 다양한 구성 옵션과 함께 엽니다. 이 함수는 IMDB 검색 기능에 대한 편리한 래퍼를 제공하여 PowerShell에서 직접 영화, TV 프로그램, 배우 및 기타 엔터테인먼트 콘텐츠를 검색할 수 있도록 합니다.

이 함수는 검색어를 받아 적절한 IMDB 검색 URL을 구성한 후, 사용자 지정 창 위치, 브라우저 선택 및 디스플레이 옵션을 사용하여 지정된 웹 브라우저에서 엽니다. Edge, Chrome, Firefox를 포함한 모든 주요 브라우저를 지원하며, 프라이빗 브라우징, 전체 화면 모드 및 창 관리 기능을 제공합니다.

주요 기능으로는 다중 모니터 지원, 언어 지역화, 키보드 자동화 및 포괄적인 브라우저 구성 옵션이 있습니다. 이 함수는 여러 검색 쿼리를 동시에 처리할 수 있으며, 대화형 사용 및 자동화된 워크플로우 모두에 대한 옵션을 제공합니다.

## Syntax

```powershell
Open-IMDBQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | IMDB에서 검색할 검색어 |
| `-Language` | String | — | — | 1 | — | 반환된 검색 결과의 언어 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 사용할 모니터, 0 = 기본값, -1 = 사용 안 함, -2 = 설정된 보조 모니터, 기본값은 -1 |
| `-Width` | Int32 | — | — | Named | `-1` | 웹브라우저 창의 초기 너비 |
| `-Height` | Int32 | — | — | Named | `-1` | 웹 브라우저 창의 초기 높이 |
| `-X` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 X 위치 |
| `-Y` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 Y 위치 |
| `-AcceptLang` | String | — | — | Named | — | Set the browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | 브라우저 창에 보낼 키 입력, cmdlet GenXdev\Send-Key에 대한 설명서 참조 |
| `-Private` | SwitchParameter | — | — | Named | — | 시크릿/프라이빗 브라우징 모드에서 열기 |
| `-Force` | SwitchParameter | — | — | Named | — | 디버깅 포트를 강제로 활성화하고, 필요한 경우 기존 브라우저를 중지합니다 |
| `-Edge` | SwitchParameter | — | — | Named | — | Microsoft Edge에서 열기 |
| `-Chrome` | SwitchParameter | — | — | Named | — | Google Chrome에서 열기 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 기본 브라우저에 따라 Microsoft Edge 또는 Google Chrome에서 열립니다. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Firefox에서 열기 |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Playwright에서 관리하는 브라우저를 OS에 설치된 브라우저 대신 사용합니다 |
| `-Webkit` | SwitchParameter | — | — | Named | — | Playwright로 관리되는 WebKit 브라우저를 엽니다. -PlayWright를 암시합니다. |
| `-Headless` | SwitchParameter | — | — | Named | — | 보이는 창 없이 브라우저 실행 |
| `-All` | SwitchParameter | — | — | Named | — | 모든 등록된 최신 브라우저에서 열림 |
| `-Left` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 왼쪽에 배치합니다. |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 상단에 배치 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 중앙에 배치합니다 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 열기 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤 숨기기 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 브라우저 확장 프로그램 로딩 방지 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 브라우저의 팝업 차단 기능을 비활성화합니다 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창에 포커스 설정 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창을 전면으로 설정 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창 최대화 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复为正常状态 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 기존 브라우저 창을 재사용하지 말고, 대신 새 창을 만드세요. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 브라우저 프로세스의 [System.Diagnostics.Process] 객체를 반환합니다. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | 웹 브라우저를 연 후 URL을 반환하세요 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 브라우저에 키 입력을 보낼 때 제어 문자를 이스케이프 처리합니다. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키 입력 전송 후 PowerShell로 키보드 포커스가 돌아가지 않도록 방지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 키를 보낼 때 일반 Enter 대신 Shift+Enter를 줄 바꿈에 사용합니다 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 다른 키 시퀀스 전송 사이의 지연 시간(밀리초) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창의 테두리를 제거합니다 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Open browser windows side by side |

## Examples

### Open-IMDBQuery -Queries "The Matrix" -Monitor 0

```powershell
Open-IMDBQuery -Queries "The Matrix" -Monitor 0
```

기본 모니터에서 "매트릭스"에 대한 IMDB 검색을 엽니다.

### imdb "The Matrix" -m 0

```powershell
imdb "The Matrix" -m 0
```

IMDB에서 "The Matrix"를 검색할 때는 별칭과 단축 파라미터를 사용하세요.

### "Inception", "Interstellar" | Open-IMDBQuery -Language "French" -Chrome

```powershell
"Inception", "Interstellar" | Open-IMDBQuery -Language "French" -Chrome
```

특정 영화 다수(복수)를 크롬 브라우저에서 IMDB에 프랑스어 결과로 검색합니다.

### Open-IMDBQuery -Queries "Tom Hanks" -FullScreen -RestoreFocus

```powershell
Open-IMDBQuery -Queries "Tom Hanks" -FullScreen -RestoreFocus
```

IMDB에서 전체 화면 모드로 톰 행크스를 검색한 다음, 포커스를 PowerShell로 되돌립니다.

## Related Links

- [Open-IMDBQuery on GitHub](https://github.com/genXdev/genXdev)
