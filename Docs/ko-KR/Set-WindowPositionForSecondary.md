# Set-WindowPositionForSecondary

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wps

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WindowPositionForSecondary [[-Process] <Diagnostics.Process[]>] [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-FullScreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NoBorders] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Process` | Diagnostics.Process[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 창을 위치시키는 과정 |
| `-Monitor` | Int32 | — | — | Named | `-2` | 사용할 모니터, 0=기본값, -1=삭제, -2=설정됨 |
| `-Width` | Int32 | — | — | Named | `-1` | 창의 초기 너비 |
| `-Height` | Int32 | — | — | Named | `-1` | 창문의 초기 높이 |
| `-X` | Int32 | — | — | Named | `-999999` | 창의 초기 X 위치 |
| `-Y` | Int32 | — | — | Named | `-999999` | 창의 초기 Y 위치 |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Place window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | 화면 하단에 창을 배치합니다 |
| `-Centered` | SwitchParameter | — | — | Named | — | 창을 화면 중앙에 배치합니다. |
| `-FullScreen` | SwitchParameter | — | — | Named | — | F11을 창에 보냅니다 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창의 테두리를 제거합니다 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 위치 지정 후 창에 포커스 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 창 위치를 설정한 후 전경으로 가져오기 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창 최대화 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复为正常状态 |
| `-KeysToSend` | String[] | — | — | Named | — | 창을 위치시킨 후 보낼 키 입력 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자와 수정자를 이스케이프 처리하세요 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키 입력 시 대상 창에 키보드 포커스 유지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 키를 보낼 때 Enter 대신 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 키를 전송할 때 입력 문자열 간의 지연 시간(밀리초) |
| `-PassThru` | SwitchParameter | — | — | Named | — | 위치 지정 후 프로세스 객체를 반환합니다 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 동일한 모니터에서 PowerShell 옆에 창 나란히 배치 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Set-WindowPositionForSecondary on GitHub](https://github.com/genXdev/genXdev)
