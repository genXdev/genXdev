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
| `-Process` | Diagnostics.Process[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 窗口定位的过程 |
| `-Monitor` | Int32 | — | — | Named | `-2` | 要使用的显示器，0=默认，-1=丢弃，-2=已配置 |
| `-Width` | Int32 | — | — | Named | `-1` | 窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | 窗口的初始高度 |
| `-X` | Int32 | — | — | Named | `-999999` | 窗口的初始X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | 窗口的初始Y位置 |
| `-Left` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将窗口放在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕底部 |
| `-Centered` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕中央 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 向窗口发送F11键 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除窗口的边框 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 定位后聚焦窗口 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 定位后置窗口到前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复到正常状态 |
| `-KeysToSend` | String[] | — | — | Named | — | 定位窗口后要发送的按键 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送键时转义控制字符和修饰符 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 在发送按键时，保持键盘焦点在目标窗口上 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 请在发送键时使用Shift+Enter代替Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送按键时不同输入字符串之间的延迟（毫秒） |
| `-PassThru` | SwitchParameter | — | — | Named | — | 定位后返回处理对象 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将窗口与 PowerShell 并排放在同一显示器上 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |

## Related Links

- [Set-WindowPositionForSecondary on GitHub](https://github.com/genXdev/genXdev)
