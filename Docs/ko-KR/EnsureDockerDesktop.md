# EnsureDockerDesktop

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
EnsureDockerDesktop [[-Monitor] <Int32>] [[-Width] <Int32>] [[-Height] <Int32>] [[-X] <Int32>] [[-Y] <Int32>] [[-KeysToSend] <String[]>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-Left] [-NoBorders] [-NoDockerInitialization] [-RestoreFocus] [-Right] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-Top] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ShowWindow` | SwitchParameter | — | — | Named | — | 초기화 중에 Docker Desktop 창 표시 |
| `-Monitor` | Int32 | — | — | 0 | `-1` | 사용할 모니터, 0 = 기본, -1은 무시 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창의 테두리를 제거합니다 |
| `-Force` | SwitchParameter | — | — | Named | — | 도커 데스크탑 재시작 강제 |
| `-Width` | Int32 | — | — | 1 | — | 창의 초기 너비 |
| `-Height` | Int32 | — | — | 2 | — | 창문의 초기 높이 |
| `-X` | Int32 | — | — | 3 | — | 창의 초기 X 위치 |
| `-Y` | Int32 | — | — | 4 | — | 창의 초기 Y 위치 |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Place window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | 화면 하단에 창을 배치합니다 |
| `-Centered` | SwitchParameter | — | — | Named | — | 창을 화면 중앙에 배치합니다. |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximize the window |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Powershell과 다른 모니터에서 창을 전체 화면으로 설정하거나, 같은 모니터에서 Powershell과 나란히 설정합니다. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열린 후 창에 포커스 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 창을 전경으로 설정 |
| `-KeysToSend` | String[] | — | — | 5 | — | Keystrokes to send to the Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자와 수정자를 이스케이프 처리하세요 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키 입력 시 대상 창에 키보드 포커스 유지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 키를 보낼 때 Enter 대신 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 6 | — | 키를 전송할 때 입력 문자열 간의 지연 시간(밀리초) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-NoDockerInitialization` | SwitchParameter | — | — | Named | — | Docker 초기화를 건너뛰고 즉시 반환 |

## Related Links

- [EnsureDockerDesktop on GitHub](https://github.com/genXdev/genXdev)
