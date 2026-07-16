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
| `-ProcessName` | String | — | ✅ (ByPropertyName) | Named | — | Имя процесса для отправки ключей (поддерживает символы подстановки) *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | — | ID процесса для отправки клавиш *(Parameter set: )* |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | — | Дескриптор окна для отправки нажатий клавиш *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers in input text |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Удерживать фокус клавиатуры на целевом окне после отправки нажатий |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter for newlines |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `10` | Задержка между различными входными строками в миллисекундах |

## Related Links

- [Send-Key on GitHub](https://github.com/genXdev/genXdev)
