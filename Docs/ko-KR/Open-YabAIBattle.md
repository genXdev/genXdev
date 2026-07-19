# Open-YabAIBattle

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `yabbattle

## Synopsis

> 웹 브라우저에서 YabAI Battle 게임을 엽니다.

## Description

이 함수는 웹 브라우저에서 YabAI Battle 게임을 실행하며, 창 배치, 브라우저 선택 및 디스플레이 모드에 대한 광범위한 사용자 지정 옵션을 제공합니다. GenXdev\Open-Webbrowser 함수를 래핑하여 게임별 URL 구성과 매개변수 처리를 수행합니다.

이 함수는 두 가지 게임 모드를 지원합니다:
- 배틀 모드: 새로운 AI 대 AI 배틀 시작
- 관전 모드: 기존 AI 배틀 관전

브라우저 위치 옵션에는 왼쪽, 오른쪽, 위쪽, 아래쪽, 중앙 및 전체 화면 모드가 포함되며, 다중 모니터를 지원합니다. 함수는 최적의 게임 환경을 위해 애플리케이션 모드 설정 및 브라우저 확장 관리 기능을 자동으로 처리합니다.

## Syntax

```powershell
Open-YabAIBattle [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowWindow] [-SideBySide] [-SkipSession] [-SpectateOnly] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | 게임 인터페이스의 언어 |
| `-SpectateOnly` | SwitchParameter | — | — | Named | — | 새 게임을 시작하지 말고, AI가 플레이하는 것만 지켜보세요 |
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
| `-Monitor` | Int32 | — | — | Named | `-2` | 사용할 모니터, 0 = 기본값, -1 = 폐기, -2 = 설정된 보조 모니터, 기본값은 $Global:DefaultSecondaryMonitor이며, 찾을 수 없으면 2 |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 열기 |
| `-Width` | Int32 | — | — | Named | `-1` | 웹브라우저 창의 초기 너비 |
| `-Height` | Int32 | — | — | Named | `-1` | 웹 브라우저 창의 초기 높이 |
| `-X` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 X 위치 |
| `-Y` | Int32 | — | — | Named | `-999999` | 웹브라우저 창의 초기 Y 위치 |
| `-Left` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 왼쪽에 배치합니다. |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 상단에 배치 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 브라우저 창을 화면 중앙에 배치합니다 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤 숨기기 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 브라우저 확장 프로그램 로딩 방지 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker |
| `-AcceptLang` | String | — | — | Named | — | Set the browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | 브라우저 창에 보낼 키 입력, cmdlet GenXdev\Send-Key에 대한 설명서 참조 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자를 이스케이프하세요. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Prevent returning keyboard focus to PowerShell after sending keys. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 키를 보낼 때 줄 바꿈은 일반 Enter 대신 Shift+Enter로 보냅니다. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 각 키를 전송하는 사이의 지연 시간(밀리초) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창에 포커스 설정 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창을 전면으로 설정 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창 최대화 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复为正常状态 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 브라우저를 연 후 이전 창에 포커스를 복원합니다. |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 기존 브라우저 창을 재사용하지 말고, 대신 새 창을 만드세요. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 브라우저 프로세스의 [System.Diagnostics.Process] 객체를 반환합니다. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | 웹 브라우저를 연 후 URL을 반환하세요 |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 열지 마세요 |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤을 표시하세요 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 브라우저 창의 테두리를 제거합니다. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 브라우저 창을 PowerShell과 다른 모니터에서 전체 화면으로 배치하거나, 같은 모니터에서 PowerShell과 나란히 배치합니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정을 위해 세션에 저장된 대체 설정을 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정 대안을 삭제합니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 설정 변경 사항은 세션에 영향을 주지 않고 영구 설정에만 저장하십시오. |

## Examples

### Open-YabAIBattle -Edge -Private -NoFullScreen

```powershell
Open-YabAIBattle -Edge -Private -NoFullScreen
```

비공개 브라우징 모드로 전체 화면 없이 Microsoft Edge에서 YabAI 배틀 게임을 엽니다.

### yabbattle -e -incognito -nfs

```powershell
yabbattle -e -incognito -nfs
```

Edge의 별칭, 시크릿 모드, 전체 화면 없음을 사용하여 게임을 엽니다.

### Open-YabAIBattle -SpectateOnly -Chrome

```powershell
Open-YabAIBattle -SpectateOnly -Chrome
```

관전 모드에서 Google Chrome을 사용하여 게임을 열어 AI 전투를 관람합니다.

### Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left

```powershell
Open-YabAIBattle -Language "Spanish" -Monitor 1 -Left
```

모니터 1의 왼쪽에 스페인어 인터페이스로 게임을 실행합니다.

## Related Links

- [Open-YabAIBattle on GitHub](https://github.com/genXdev/genXdev)
