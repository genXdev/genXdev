# Send-Key

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `sendkeys, `invokekeys

## Synopsis

> Sends simulated keystrokes to a window or process.

## Description

This function sends keyboard input to a target window or process using the
Windows Script Host Shell object. It can target windows by process name,
process ID, or window handle. The function supports special key sequences,
escape characters, and various timing options for reliable key delivery.

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
| `-ProcessName` | String | — | ✅ (ByPropertyName) | Named | — | Name of the process to send keys to (supports wildcards) *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | — | ID of the process to send keys to *(Parameter set: )* |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | — | Window handle to send keys to *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers in input text |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hold keyboard focus on target window after sending keys |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter for newlines |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `10` | Delay between different input strings in milliseconds |

## Examples

### Send-Key -KeysToSend "Hello World{ENTER}" -ProcessName "notepad" Sends text to Notepad followed by Enter key using process name targeting.

```powershell
Send-Key -KeysToSend "Hello World{ENTER}" -ProcessName "notepad"
Sends text to Notepad followed by Enter key using process name targeting.
```

### Send-Key "Special {F11} key" -SendKeyEscape -ProcessId 1234 Sends literal "{F11}" text rather than F11 key using process ID targeting.

```powershell
Send-Key "Special {F11} key" -SendKeyEscape -ProcessId 1234
Sends literal "{F11}" text rather than F11 key using process ID targeting.
```

### sendkeys "Line 1{ENTER}Line 2" -WindowHandle 123456 -SendKeyDelayMilliSeconds 50 Sends multi-line text with custom delay using window handle targeting.

```powershell
sendkeys "Line 1{ENTER}Line 2" -WindowHandle 123456 -SendKeyDelayMilliSeconds 50
Sends multi-line text with custom delay using window handle targeting.
```

## Related Links

- [Send-Key on GitHub](https://github.com/genXdev/genXdev)
