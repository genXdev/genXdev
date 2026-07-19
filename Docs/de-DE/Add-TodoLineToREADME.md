# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo

## Synopsis

> Fügt der README.md-Datei einen Aufgabeneintrag hinzu.

## Description

Adds a timestamped todo item to the "## Todoos" section of a README.md file.
The todo items can be marked as done and the modified section can be displayed.
Each new todo item is automatically timestamped unless marking as done.

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-Done] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | The todo item text to add |
| `-Code` | SwitchParameter | — | — | Named | — | Öffne README in Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | Die geänderte Sektion wird angezeigt. |
| `-Done` | SwitchParameter | — | — | Named | — | Todo-Artikel als erledigt markieren |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-Priority` | Int32 | — | — | Named | `1` | Priorität für Sortierung (höher = zuerst angezeigt, Standard 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Zeilen nach Datum (yyyyMMdd-Präfix) sortieren statt nach Priorität |
| `-Ascending` | SwitchParameter | — | — | Named | — | Die Sortierreihenfolge umkehren (aufsteigend statt absteigend) |
| `-First` | Int32 | — | — | Named | `0` | Limit - Ausgabe auf die ersten N Zeilen beschränken |

## Examples

### Add-TodoLineToREADME -Line "Implement new feature" -Show -Code

```powershell
Add-TodoLineToREADME -Line "Implement new feature" -Show -Code
```

### todo "Fix bug" -Done

```powershell
todo "Fix bug" -Done
```

## Related Links

- [Add-TodoLineToREADME on GitHub](https://github.com/genXdev/genXdev)
