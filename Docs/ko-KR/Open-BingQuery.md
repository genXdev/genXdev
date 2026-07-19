# Open-BingQuery

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `bq

## Synopsis

> 웹 브라우저에서 Bing 검색 쿼리를 엽니다.

## Description

구성 가능한 브라우저 설정 및 명령줄 스위치를 사용하여 웹 브라우저에서 하나 이상의 Bing 검색 쿼리를 엽니다. 이 함수는 창 위치 지정, 모니터 선택, 개인 브라우징 및 키 입력 자동화를 포함한 광범위한 브라우저 사용자 지정 옵션으로 Bing 검색을 수행하기 위한 포괄적인 인터페이스를 제공합니다.

이 함수는 쿼리를 자동으로 URL 인코딩하고 Bing의 검색 API에 맞게 형식화합니다. Edge, Chrome 및 Firefox를 포함한 모든 주요 브라우저를 지원하며 개인 브라우징, 애플리케이션 모드, 정밀한 창 관리 및 키 입력 자동화와 같은 기능을 제공합니다.

## Syntax

```powershell
Open-BingQuery -Queries <String[]> [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 실행할 쿼리입니다. |
| `-Language` | String | — | — | 1 | — | 반환된 검색 결과의 언어 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 사용할 모니터, 0 = 기본값, -1 = 폐기, -2 = 설정된 보조 모니터, 기본값은 $Global:DefaultSecondaryMonitor이며, 찾을 수 없으면 2 |
| `-Width` | Int32 | — | — | Named | `-1` | 웹브라우저 창의 초기 너비 |
| `-Height` | Int32 | — | — | Named | `-1` | 웹 브라우저 창의 초기 높이 |
| `-X` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 X 위치 |
| `-Y` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 Y 위치 |
| `-AcceptLang` | String | — | — | Named | — | Set the browser accept-lang http header |
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
| `-Private` | SwitchParameter | — | — | Named | — | 시크릿/프라이빗 브라우징 모드에서 열기 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤 숨기기 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 브라우저 확장 프로그램 로딩 방지 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창에 포커스 설정 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창을 전면으로 설정 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창 최대화 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复为正常状态 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 브라우저 프로세스의 PowerShell 개체를 반환합니다. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창의 테두리를 제거합니다 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Powershell과 다른 모니터에서 창을 전체 화면으로 설정하거나, 같은 모니터에서 Powershell과 나란히 설정합니다. |
| `-KeysToSend` | String[] | — | — | Named | — | 브라우저 창에 보낼 키 입력, cmdlet GenXdev\Send-Key에 대한 설명서 참조 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자를 이스케이프 처리 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | SendKeys를 보낸 후 PowerShell에 키보드 포커스가 돌아가지 않도록 방지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 줄 바꿈을 위해 일반 Enter 대신 Shift+Enter를 보내기 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 다른 키 시퀀스 전송 사이의 지연 시간(밀리초) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 기존 브라우저 창을 재사용하지 말고, 대신 새 창을 만드세요. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | 웹 브라우저를 연 후 URL을 반환하세요 |

## Examples

### Open-BingQuery -Queries "PowerShell scripting" -Monitor 0

```powershell
Open-BingQuery -Queries "PowerShell scripting" -Monitor 0
```

기본 모니터에서 "PowerShell 스크립팅"에 대한 Bing 검색을 엽니다.

### bq "PowerShell scripting" -m 0

```powershell
bq "PowerShell scripting" -m 0
```

별칭과 짧은 매개변수 이름을 사용하여 Bing 검색을 엽니다.

### Open-BingQuery -Queries "machine learning" -Language "English" -Private

```powershell
Open-BingQuery -Queries "machine learning" -Language "English" -Private
```

"machine learning"을(를) 영어 결과로 검색하기 위해 개인 브라우징 세션을 엽니다.

### "PowerShell", "automation", "scripting" | Open-BingQuery -All -Left

```powershell
"PowerShell", "automation", "scripting" | Open-BingQuery -All -Left
```

파이프라인을 통해 여러 검색어를 검색하고 설치된 모든 브라우저에서 결과를 열어 창을 화면 왼쪽에 배치합니다.

## Related Links

- [Open-BingQuery on GitHub](https://github.com/genXdev/genXdev)
