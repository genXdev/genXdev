# Open-StackOverflowQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qso

## Synopsis

> 웹 브라우저에서 Stack Overflow 검색 쿼리를 엽니다.

## Description

하나 이상의 Stack Overflow 검색 쿼리를 포괄적인 브라우저 및 디스플레이 구성 옵션과 함께 웹 브라우저에서 엽니다. 이 함수는 Stack Overflow 검색 기능에 대한 고급 래퍼를 제공하며, 창 위치 지정, 브라우저 선택 및 동작 사용자 지정을 위한 광범위한 옵션을 제공합니다.

주요 기능:
- 파이프라인 입력을 통한 여러 검색 쿼리 지원
- 스마트 브라우저 감지 및 선택(Edge, Chrome, Firefox, 모든 브라우저)
- 고급 창 위치 지정(왼쪽, 오른쪽, 위쪽, 아래쪽, 중앙, 전체 화면)
- 자동 또는 수동 모니터 선택을 통한 다중 모니터 지원
- 개인 정보 보호/시크릿 브라우징 모드 지원
- 방해 없는 브라우징을 위한 응용 프로그램 모드
- 국제 검색 결과를 위한 언어 지역화 지원
- 확장 프로그램 및 팝업 차단 옵션
- 포커스 관리 및 창 조작
- 브라우저 창에 키 입력 자동화
- 자동화 워크플로우를 위한 URL 반환 옵션

함수는 시스템 기능을 자동으로 감지하고 그에 따라 동작을 조정합니다. 시스템에 설치되지 않은 브라우저의 경우 오류 없이 자동으로 건너뜁니다.

## Syntax

```powershell
Open-StackOverflowQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Stack Overflow에서 수행할 검색 쿼리 |
| `-Language` | String | — | — | 1 | — | 지역화된 Stack Overflow 콘텐츠에 대한 검색 결과의 언어 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 사용할 모니터, 0 = 기본, -1은 폐기, -2 = 설정된 보조 모니터, 기본값은 -1, 위치 지정 없음 |
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
| `-FullScreen` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 열기 |
| `-Left` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 왼쪽에 배치합니다. |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 상단에 배치 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 중앙에 배치합니다 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤 숨기기 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 브라우저 확장 프로그램 로딩 방지 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창에 포커스 설정 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창을 전면으로 설정 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창 최대화 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复为正常状态 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 기존 브라우저 창을 재사용하지 말고, 대신 새 창을 만드세요. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 브라우저 프로세스의 [System.Diagnostics.Process] 객체를 반환합니다. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | 웹 브라우저를 연 후 URL을 반환하세요 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자를 이스케이프 처리 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | SendKeys를 보낸 후 PowerShell에 키보드 포커스가 돌아가지 않도록 방지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 줄 바꿈을 위해 일반 Enter 대신 Shift+Enter를 보내기 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 다른 키 시퀀스 전송 사이의 지연 시간(밀리초) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 브라우저 창의 테두리를 제거합니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for Stack Overflow search preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정이 Stack Overflow 검색 기본 설정에서 삭제되었습니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Stack Overflow 검색을 위해 설정을 영구 설정에만 저장하고 세션에는 영향을 주지 않음 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 브라우저 창을 PowerShell과 다른 모니터에서 전체 화면으로 배치하거나, 같은 모니터에서 PowerShell과 나란히 배치합니다. |

## Examples

### Open-StackOverflowQuery -Queries "powershell array" -Monitor 0

```powershell
Open-StackOverflowQuery -Queries "powershell array" -Monitor 0
```

기본 모니터에서 "powershell array"에 대한 Stack Overflow 검색을 엽니다.

### qso "powershell array" -mon 0

```powershell
qso "powershell array" -mon 0
```

모니터 위치를 고려한 별칭으로 Stack Overflow 검색을 엽니다.

### "powershell", "array manipulation" | Open-StackOverflowQuery -Language "English" -Chrome

```powershell
"powershell", "array manipulation" | Open-StackOverflowQuery -Language "English" -Chrome
```

크롬에서 영어 언어를 선호 설정으로 여러 Stack Overflow 검색을 엽니다.

### Open-StackOverflowQuery -Queries "c# linq" -ReturnURL

```powershell
Open-StackOverflowQuery -Queries "c# linq" -ReturnURL
```

브라우저를 열지 않고 Stack Overflow 검색 URL을 반환합니다.

## Related Links

- [Open-StackOverflowQuery on GitHub](https://github.com/genXdev/genXdev)
