# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> Öffnet eine Quelldatei in der bevorzugten IDE (Visual Studio Code oder Visual Studio).

## Description

Diese Funktion öffnet eine angegebene Quelldatei entweder in Visual Studio Code oder Visual Studio. Sie kann direkt zu einer bestimmten Zeilennummer navigieren und optional Tastatureingaben an die IDE senden, nachdem die Datei geöffnet wurde. Die Funktion versucht zu ermitteln, welche IDE basierend auf dem aktuellen Hostprozess, laufenden Anwendungen oder der Benutzerauswahl verwendet werden soll.

## Syntax

```powershell
Open-SourceFileInIde -Path <String> [[-LineNo] <Int32>] [[-KeysToSend] <String[]>] [-Code] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der Pfad zur zu öffnenden Quelldatei |
| `-LineNo` | Int32 | — | — | 1 | `0` | Die Zeilennummer, zu der navigiert werden soll |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | Array von Tastatureingaben, die an die Anwendung gesendet werden sollen |
| `-Code` | SwitchParameter | — | — | Named | — | Die IDE, um die Datei zu öffnen |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | In Visual Studio öffnen |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape-Steuerzeichen und Modifikatoren |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Tastaturfokus auf Zielfenster halten |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Verzögerung zwischen verschiedenen Eingabe-Strings in Millisekunden |

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
