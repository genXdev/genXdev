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
| `-ProcessName` | String | — | ✅ (ByPropertyName) | Named | — | Name des Prozesses, an den die Tasten gesendet werden sollen (unterstützt Platzhalter) *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | — | ID des Prozesses, an den die Tasten gesendet werden sollen *(Parameter set: )* |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | — | Fensterhandle zum Senden von Tastenanschlägen *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers in input text |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tastaturfokus auf Ziel-Fenster behalten nach dem Senden von Tasten |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter for newlines |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `10` | Verzögerung zwischen verschiedenen Eingabe-Strings in Millisekunden |

## Related Links

- [Send-Key on GitHub](https://github.com/genXdev/genXdev)
