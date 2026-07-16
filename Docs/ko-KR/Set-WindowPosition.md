# Set-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wp

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Set-WindowPosition [[-ProcessName] <String>] [<CommonParameters>]

Set-WindowPosition [-Process <Diagnostics.Process>] [<CommonParameters>]

Set-WindowPosition [-WindowHelper <GenXdev.Helpers.WindowObj[]>] [<CommonParameters>]

Set-WindowPosition [-Bottom] [-Centered] [-ClearSession] [-FocusWindow] [-Fullscreen] [-Height <Int32>] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Minimize] [-Monitor <Int32>] [-NoBorders] [-OnlyOutputCoords] [-PassThru] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-SideBySide] [-SkipSession] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | 위치를 지정할 창의 프로세스 이름 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | 창을 위치시키는 과정 *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | 창 직접 조작을 위한 Get-Window 헬퍼 객체 *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | 모니터 선택: 0=주 모니터, 1+=특정 모니터, -1=현재 모니터, -2=보조 모니터 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 창의 테두리를 제거합니다 |
| `-Width` | Int32 | — | — | Named | `-1` | 창 너비(픽셀) |
| `-Height` | Int32 | — | — | Named | `-999999` | 창 높이(픽셀) |
| `-X` | Int32 | — | — | Named | `-999999` | 픽셀 단위의 창 가로 위치 |
| `-Y` | Int32 | — | — | Named | `-999999` | 픽셀 단위의 창 세로 위치 |
| `-Left` | SwitchParameter | — | — | Named | — | Place window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Place window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | 화면 하단에 창을 배치합니다 |
| `-Centered` | SwitchParameter | — | — | Named | — | 창을 화면 중앙에 배치합니다. |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Maximize the window |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | PowerShell 창 포커스 복원 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 각 프로세스에 대한 창 도우미를 반환합니다 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Powershell과 다른 모니터에서 창을 전체 화면으로 설정하거나, 같은 모니터에서 Powershell과 나란히 설정합니다. |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 열린 후 창에 포커스 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 열기 후 창을 전경으로 설정 |
| `-Minimize` | SwitchParameter | — | — | Named | — | 배치 후 창 최소화 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 위치 지정 후 창 최대화 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复为正常状态 |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 키를 보낼 때 제어 문자와 수정자를 이스케이프 처리하세요 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키 입력 시 대상 창에 키보드 포커스 유지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 키를 보낼 때 Enter 대신 Shift+Enter를 사용하세요 |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 키를 전송할 때 입력 문자열 간의 지연 시간(밀리초) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 선호도에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 선호도를 위해 세션에 저장된 대체 설정을 초기화합니다 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Related Links

- [Set-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
