# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Fügt eine Zeile in eine README.md-Markdowndatei in einem bestimmten Abschnitt ein.

## Description

Findet eine README.md-Datei und ändert sie, indem eine neue Zeile zu einem bestimmten Abschnitt hinzugefügt wird. Kann den Abschnitt erstellen, falls er nicht existiert. Unterstützt die Formatierung von Zeilen als Codeblöcke und die Anzeige des geänderten Abschnitts.

Zunächst wird im aktuellen Verzeichnis gesucht, dann in übergeordneten Verzeichnissen, um den README-Speicherort zu finden. Falls nicht gefunden, wird der README im PowerShell-Profilverzeichnis verwendet.

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | The line to add to the README |
| `-Section` | String | ✅ | — | 0 | — | Der Abschnitt, dem die Zeile hinzugefügt werden soll |
| `-Code` | SwitchParameter | — | — | Named | — | Open in Visual Studio Code after modifying |
| `-Show` | SwitchParameter | — | — | Named | — | Die geänderte Sektion wird angezeigt. |
| `-Done` | SwitchParameter | — | — | Named | — | Mark the item as completed |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-Priority` | Int32 | — | — | Named | `1` | Priorität für Sortierung (höher = zuerst angezeigt, Standard 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Zeilen nach Datum (yyyyMMdd-Präfix) sortieren statt nach Priorität |
| `-Ascending` | SwitchParameter | — | — | Named | — | Die Sortierreihenfolge umkehren (aufsteigend statt absteigend) |
| `-First` | Int32 | — | — | Named | `0` | Limit - Ausgabe auf die ersten N Zeilen beschränken |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
