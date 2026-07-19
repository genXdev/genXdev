# Open-PlayWrightBrowser

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `spb

## Synopsis

> Playwright가 관리하는 브라우저를 영구 사용자 프로필로 시작합니다.

## Description

<details>
<summary><b>Expand description</b></summary>

Playwright의 내장 Chromium, Firefox 또는 WebKit 바이너리로 구동되는 독립형 브라우저 인스턴스를 시작합니다. OS에 설치된 브라우저와 완전히 독립적입니다. 브라우저는 GenXdev AppData에 저장된 영구 사용자 프로필을 사용하므로 쿠키, localStorage 및 세션이 재시작 간에 유지됩니다.

이 cmdlet은 Chrome 136+에서 중단된 기존 CDP/디버깅 포트 방식을 대체합니다. 디버깅 포트를 통해 시스템 브라우저에 연결하는 대신 Playwright가 자체 브라우저 수명 주기를 직접 관리합니다.

주요 기능:
- 브라우저 유형별(Chromium, Firefox, WebKit) 영구 프로필
- 구성 가능한 뷰포트 크기 및 창 위치
- 자동화를 위한 헤드리스 모드
- 프록시 서버 지원
- 사용자 정의 Accept-Language 헤더
- 시크릿/비공개 컨텍스트 옵션
- 브라우저 확장 프로그램 제어
- -Width, -Height, -Left, -Right 등을 통한 뷰포트 크기 및 위치 지정
- 기존 인스턴스를 닫고 새로 시작하는 강제 재시작

시작된 브라우저와 그 컨텍스트/페이지는 다른 cmdlet에서 사용할 수 있도록 $Global:GenXdevPlaywright에 저장됩니다.

</details>
## Syntax

```powershell
Open-PlayWrightBrowser [[-BrowserType] <String>] [-AcceptLang <String>] [-Bottom] [-Centered] [-ClearSession] [-ConsentToThirdPartySoftwareInstallation] [-FocusWindow] [-Force] [-ForceConsent] [-Fullscreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-Proxy <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-BrowserType` | String | — | — | 0 | `'Chromium'` | 실행할 브라우저 엔진: Chromium, Firefox 또는 WebKit |
| `-Headless` | SwitchParameter | — | — | Named | — | 보이는 창 없이 브라우저 실행 |
| `-Proxy` | String | — | — | Named | — | 프록시 서버 URL (예: http://proxy:8080) |
| `-AcceptLang` | String | — | — | Named | — | 브라우저 Accept-Language HTTP 헤더 설정 |
| `-Width` | Int32 | — | — | Named | `-1` | 초기 뷰포트 너비(픽셀) |
| `-Height` | Int32 | — | — | Named | `-1` | 초기 뷰포트 높이(픽셀) |
| `-Force` | SwitchParameter | — | — | Named | — | 기존 브라우저를 닫고 새로 시작합니다 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 설치 동의 대화 상자를 다시 표시하도록 강제 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 타사 소프트웨어 설치(Playwright 브라우저)에 자동으로 동의 |
| `-Monitor` | Int32 | — | — | Named | `-1` | 사용할 모니터, 0 = 기본값, -1 = 폐기, -2 = 설정된 보조 모니터, 기본값은 $Global:DefaultSecondaryMonitor이며, 찾을 수 없으면 2 |
| `-X` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 X 위치 |
| `-Y` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 Y 위치 |
| `-Left` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 왼쪽에 배치합니다. |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 상단에 배치 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 중앙에 배치합니다 |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | 창을 최대화하여 전체 화면으로 채웁니다 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창의 테두리를 제거합니다 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 브라우저 창을 PowerShell과 다른 모니터에 전체 화면으로 배치하거나, 동일한 모니터에서 PowerShell과 나란히 배치하세요. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창에 포커스 설정 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창을 전면으로 설정 |
| `-Minimize` | SwitchParameter | — | — | Named | — | 배치 후 창 최소화 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창 최대화 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复为正常状态 |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자와 수정자를 이스케이프 처리하세요 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키 입력 시 대상 창에 키보드 포커스 유지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 키를 보낼 때 Enter 대신 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 키를 전송할 때 입력 문자열 간의 지연 시간(밀리초) |
| `-PassThru` | SwitchParameter | — | — | Named | — | 추가 조작을 위한 창 도우미 객체를 반환합니다 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Examples

### Open-PlayWrightBrowser Launches a persistent Chromium browser with the default profile.

```powershell
Open-PlayWrightBrowser
Launches a persistent Chromium browser with the default profile.
```

### Open-PlayWrightBrowser -BrowserType Firefox -Headless Launches Firefox in headless mode.

```powershell
Open-PlayWrightBrowser -BrowserType Firefox -Headless
Launches Firefox in headless mode.
```

### Open-PlayWrightBrowser -Width 1280 -Height 720 -Force Restarts the browser with a 1280x720 viewport.

```powershell
Open-PlayWrightBrowser -Width 1280 -Height 720 -Force
Restarts the browser with a 1280x720 viewport.
```

### Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders Launches Chromium on the left half of monitor 1 without window borders.

```powershell
Open-PlayWrightBrowser -Left -Monitor 1 -NoBorders
Launches Chromium on the left half of monitor 1 without window borders.
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Open-PlayWrightBrowser on GitHub](https://github.com/genXdev/genXdev)
