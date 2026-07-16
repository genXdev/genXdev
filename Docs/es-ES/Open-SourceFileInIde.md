# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-SourceFileInIde -Path <String> [[-LineNo] <Int32>] [[-KeysToSend] <String[]>] [-Code] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | La ruta al archivo fuente que se va a abrir |
| `-LineNo` | Int32 | — | — | 1 | `0` | El número de línea al que navegar |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | Array de entradas de teclado para enviar a la aplicación |
| `-Code` | SwitchParameter | — | — | Named | — | El IDE para abrir el archivo en |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abrir en Visual Studio |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Mantener el foco del teclado en la ventana objetivo |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Retardo entre diferentes cadenas de entrada en milisegundos |

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
