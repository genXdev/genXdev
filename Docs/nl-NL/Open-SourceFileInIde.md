# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> Opent een bronbestand in de voorkeurs-IDE (Visual Studio Code of Visual Studio).

## Description

Deze functie opent een opgegeven bronbestand in Visual Studio Code of Visual Studio. Het kan direct naar een specifiek regelnummer navigeren en optioneel toetsenbordinvoer naar de IDE sturen na het openen van het bestand. De functie probeert te bepalen welke IDE te gebruiken op basis van het huidige hostproces, actieve toepassingen of gebruikersselectie.

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

## Examples

### Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code

```powershell
Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code
```

### editcode "C:\Projects\MyScript.ps1" 25

```powershell
editcode "C:\Projects\MyScript.ps1" 25
```

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
