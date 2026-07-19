# Set-WindowPosition

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `wp

## Synopsis

> 当提供明确的定位参数时，对窗口进行定位和调整大小。

## Description

当指定定位参数时，提供对窗口位置和大小的精确控制。支持多显示器、边框移除以及各种预设位置，如左/右分屏、上/下分屏和居中放置。窗口可以通过坐标或预定义布局进行定位。如果未提供定位参数，该函数不对窗口执行任何操作。

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
| `-ProcessName` | String | — | ✅ (ByValue, ByPropertyName) | 0 | — | 要定位的窗口的进程名称 *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Process` | Diagnostics.Process | — | ✅ (ByValue, ByPropertyName) | Named | — | 窗口定位的过程 *(Parameter set: )* |
| `-WindowHelper` | GenXdev.Helpers.WindowObj[] | — | ✅ (ByValue, ByPropertyName) | Named | — | 用于直接窗口操作的 Get-Window 辅助对象 *(Parameter set: )* |
| `-Monitor` | Int32 | — | — | Named | `-1` | 监视器选择：0=主显示器，1+=特定显示器，-1=当前，-2=辅助显示器 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 移除窗口的边框 |
| `-Width` | Int32 | — | — | Named | `-1` | 以像素为单位的窗口宽度 |
| `-Height` | Int32 | — | — | Named | `-999999` | 窗口高度（像素） |
| `-X` | Int32 | — | — | Named | `-999999` | 窗口水平位置（像素） |
| `-Y` | Int32 | — | — | Named | `-999999` | 窗口垂直位置（像素） |
| `-Left` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将窗口放在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕底部 |
| `-Centered` | SwitchParameter | — | — | Named | — | 将窗口放置在屏幕中央 |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | 最大化窗口 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 返回每个进程的窗口助手 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | 将在与 PowerShell 不同的显示器上全屏显示窗口，或与 PowerShell 在同一显示器上并排显示 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开后聚焦窗口 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将窗口置于前台 |
| `-Minimize` | SwitchParameter | — | — | Named | — | 定位后最小化窗口 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复到正常状态 |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到窗口的按键操作，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送键时转义控制字符和修饰符 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 在发送按键时，保持键盘焦点在目标窗口上 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 请在发送键时使用Shift+Enter代替Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送按键时不同输入字符串之间的延迟（毫秒） |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-OnlyOutputCoords` | SwitchParameter | — | — | Named | — | Only output the calculated coordinates and size without actually positioning the window |

## Examples

### Set-WindowPosition -Centered -Monitor 0 -NoBorders Position PowerShell window centered on primary monitor with no borders

```powershell
Set-WindowPosition -Centered -Monitor 0 -NoBorders
Position PowerShell window centered on primary monitor with no borders
```

### Get-Process notepad,calc | wp -m 1 -l,-r Split notepad and calc side by side on second monitor using aliases

```powershell
Get-Process notepad,calc | wp -m 1 -l,-r
Split notepad and calc side by side on second monitor using aliases
```

### Set-WindowPosition -ProcessName notepad Does nothing - no positioning parameters specified

```powershell
Set-WindowPosition -ProcessName notepad
Does nothing - no positioning parameters specified
```

### Set-WindowPosition -ProcessName notepad -KeysToSend "Hello World" Sends keystrokes to notepad window without repositioning it

```powershell
Set-WindowPosition -ProcessName notepad -KeysToSend "Hello World"
Sends keystrokes to notepad window without repositioning it
```

### Set-WindowPosition -ProcessName notepad -Left -Monitor 1 -OnlyOutputCoords Returns the calculated coordinates where notepad would be placed on the left side of monitor 1 without actually moving the window

```powershell
Set-WindowPosition -ProcessName notepad -Left -Monitor 1 -OnlyOutputCoords
Returns the calculated coordinates where notepad would be placed on the left
side of monitor 1 without actually moving the window
```

## Related Links

- [Set-WindowPosition on GitHub](https://github.com/genXdev/genXdev)
