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
| `-ProcessName` | String | — | ✅ (ByPropertyName) | Named | — | Nombre del proceso al que enviar las claves (admite comodines) *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | — | ID del proceso al que enviar las teclas *(Parameter set: )* |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | — | Identificador de ventana al que enviar las teclas *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers in input text |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en la ventana objetivo después de enviar las teclas |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Usa Shift+Enter en lugar de Enter para saltos de línea |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `10` | Retardo entre diferentes cadenas de entrada en milisegundos |

## Related Links

- [Send-Key on GitHub](https://github.com/genXdev/genXdev)
