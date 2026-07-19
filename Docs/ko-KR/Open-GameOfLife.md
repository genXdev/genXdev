# Open-GameOfLife

> **Module:** GenXdev.Queries.Websites | **Type:** Function | **Aliases:** `gameoflife, `conway

## Synopsis

> 웹 브라우저에서 콘웨이의 생명 게임 시뮬레이션을 엽니다.

## Description

웹 브라우저 창에서 Conway의 게임 오브 라이프 시뮬레이션을 대화형으로 엽니다.
다양한 위치 및 구성 옵션을 제공합니다. Conway의 게임 오브 라이프는
1970년 수학자 John Conway가 고안한 세포 자동자로,
격자 형태의 세포가 살아 있거나 죽은 두 가지 상태 중 하나일 수 있습니다.

이 함수는 창 위치 지정, 브라우저 선택, 개인 브라우징, 자동 상호작용 기능 등
포괄적인 브라우저 제어를 제공합니다. 시뮬레이션은 https://conway.genxdev.net/에서 실행되며
다양한 상호작용 모드를 지원합니다.

## Syntax

```powershell
Open-GameOfLife [[-Language] <String>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-DisablePopupBlocker] [-Edge] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Headless] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoApplicationMode] [-NoBorders] [-NoBrowserExtensions] [-NoFullScreen] [-PassThru] [-PlayWright] [-Private] [-RestoreFocus] [-ReturnOnlyURL] [-ReturnURL] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Webkit] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | 브라우저 인터페이스 및 콘텐츠 현지화를 위한 언어 선호도 |
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
| `-Monitor` | Int32 | — | — | Named | `-2` | 사용할 모니터, 0 = 기본, -1은 폐기, -2 = 설정된 보조 모니터, 기본값은 -1, 위치 지정 없음 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 열기 |
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
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | 브라우저 창에 보낼 키 입력, cmdlet GenXdev\Send-Key에 대한 설명서 참조 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 브라우저 창에 키 입력을 보낼 때 제어 문자를 이스케이프하세요. |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 브라우저 창에 키 입력을 보낸 후 PowerShell로 키보드 포커스가 돌아가지 않도록 방지합니다. |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 브라우저에 키 입력을 보낼 때 줄 바꿈에 일반 Enter 대신 Shift+Enter를 사용하십시오. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 다른 키 시퀀스 전송 사이의 지연 시간(밀리초). |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창에 포커스 설정 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 브라우저 창을 전면으로 설정 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창 최대화 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复为正常状态 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 브라우저를 연 후 PowerShell 창 포커스 복원. |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 기존 브라우저 창을 재사용하지 말고, 대신 새 창을 만드세요. |
| `-PassThru` | SwitchParameter | — | — | Named | — | 브라우저 프로세스의 [System.Diagnostics.Process] 객체를 반환합니다. |
| `-ReturnURL` | SwitchParameter | — | — | Named | — | Don't open webbrowser, just return the url |
| `-ReturnOnlyURL` | SwitchParameter | — | — | Named | — | 웹 브라우저를 연 후 URL을 반환하세요 |
| `-NoFullScreen` | SwitchParameter | — | — | Named | — | 전체 화면 모드로 열지 마세요 |
| `-NoApplicationMode` | SwitchParameter | — | — | Named | — | 브라우저 컨트롤을 표시하세요 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 브라우저 창의 테두리를 제거합니다. |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 브라우저 창을 PowerShell과 다른 모니터에서 전체 화면으로 배치하거나, 같은 모니터에서 PowerShell과 나란히 배치합니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 브라우저 프로필에 세션 전용 모드 사용 (닫을 때 쿠키 및 데이터 삭제됨) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 브라우저 세션/프로필 데이터를 열기 전에 삭제하세요. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 이전 브라우저 세션 복원을 건너뜁니다. |

## Examples

### Open-GameOfLife -Monitor 1 -FullScreen

```powershell
Open-GameOfLife -Monitor 1 -FullScreen
```

모니터 1에서 전체화면 모드로 Conway의 게임 오브 라이프를 엽니다.

### Open-GameOfLife -Language "French" -Chrome -Private

```powershell
Open-GameOfLife -Language "French" -Chrome -Private
```

Ouvre le Jeu de la Vie en français en utilisant Chrome en mode privé.

### gameoflife -m 0 -app

```powershell
gameoflife -m 0 -app
```

별칭을 사용하여 애플리케이션 모드에서 기본 모니터에 Game of Life를 엽니다.

### conway -Edge -Left -Width 800 -Height 600

```powershell
conway -Edge -Left -Width 800 -Height 600
```

Microsoft Edge에서 왼쪽에 특정 크기로 Conway의 Game of Life를 엽니다.

## Related Links

- [Open-GameOfLife on GitHub](https://github.com/genXdev/genXdev)
