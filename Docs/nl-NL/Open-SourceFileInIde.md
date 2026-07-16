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
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Het pad naar het bronbestand dat moet worden geopend |
| `-LineNo` | Int32 | — | — | 1 | `0` | Het regelnummer om naartoe te navigeren |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | Array van toetsenbordinvoer om naar de applicatie te sturen |
| `-Code` | SwitchParameter | — | — | Named | — | De IDE om het bestand in te openen |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Openen in Visual Studio |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Toetsenbordfocus behouden op doelvenster |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Gebruik Shift+Enter in plaats van Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Vertraging tussen verschillende invoerstrings in milliseconden |

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
