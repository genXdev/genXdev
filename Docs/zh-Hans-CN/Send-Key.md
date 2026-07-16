# Send-Key

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `sendkeys, `invokekeys

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Send-Key -KeysToSend <String[]> [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [<CommonParameters>]

Send-Key [-ProcessName <String>] [<CommonParameters>]

Send-Key [-ProcessId <Int32>] [<CommonParameters>]

Send-Key [-WindowHandle <Int64>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KeysToSend` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The keyboard input to send as an array of strings |
| `-ProcessName` | String | — | ✅ (ByPropertyName) | Named | — | 将密钥发送到的进程名称（支持通配符） *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | — | 要发送按键的目标进程ID *(Parameter set: )* |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | — | 用于发送按键的窗口句柄 *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers in input text |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 发送按键后，保持键盘焦点在目标窗口上。 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter for newlines |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `10` | 不同输入字符串之间的延迟（毫秒） |

## Related Links

- [Send-Key on GitHub](https://github.com/genXdev/genXdev)
