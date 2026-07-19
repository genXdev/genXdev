# Add-IdeaLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `idea

## Synopsis

> Fügt der Datei README.md einen Ideeneintrag hinzu.

## Description

Fügt einen zeitgestempelten Gedanken zum Abschnitt "## Ideen" einer README.md-Datei hinzu.
Kann den geänderten Abschnitt anzeigen und in Visual Studio Code öffnen.

## Syntax

```powershell
Add-IdeaLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | Die Idee, Text hinzuzufügen |
| `-Code` | SwitchParameter | — | — | Named | — | Öffne README in Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | Die geänderte Sektion wird angezeigt. |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-Priority` | Int32 | — | — | Named | `1` | Priorität für Sortierung (höher = zuerst angezeigt, Standard 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Zeilen nach Datum (yyyyMMdd-Präfix) sortieren statt nach Priorität |
| `-Ascending` | SwitchParameter | — | — | Named | — | Die Sortierreihenfolge umkehren (aufsteigend statt absteigend) |
| `-First` | Int32 | — | — | Named | `0` | Limit - Ausgabe auf die ersten N Zeilen beschränken |

## Examples

### Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show

```powershell
Add-IdeaLineToREADME -Line "Create new PowerShell module" -Show
```

### idea "New feature idea" -UseOneDriveREADME

```powershell
idea "New feature idea" -UseOneDriveREADME
```

## Related Links

- [Add-IdeaLineToREADME on GitHub](https://github.com/genXdev/genXdev)
