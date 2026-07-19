# Get-Issues

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `issues

## Synopsis

> Zeigt Probleme aus einer README.md-Datei an.

## Description

Zeigt alle Probleme aus dem Abschnitt "## Issues" einer README.md-Datei an. Kann entweder das README im aktuellen Verzeichnis, das PowerShell-Profilverzeichnis oder das OneDrive-Verzeichnis verwenden.

## Syntax

```powershell
Get-Issues [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Use README in PowerShell profile directory |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Use README in OneDrive directory |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Zeilen nach Datum (yyyyMMdd-Präfix) sortieren statt nach Priorität |
| `-Ascending` | SwitchParameter | — | — | Named | — | Die Sortierreihenfolge umkehren (aufsteigend statt absteigend) |
| `-First` | Int32 | — | — | 0 | `0` | Ausgabe auf die ersten N Zeilen beschränken |

## Examples

### Issues -UseHomeREADME

```powershell
Issues -UseHomeREADME
```

### Issues -UseOneDriveREADME

```powershell
Issues -UseOneDriveREADME
```

## Related Links

- [Get-Issues on GitHub](https://github.com/genXdev/genXdev)
