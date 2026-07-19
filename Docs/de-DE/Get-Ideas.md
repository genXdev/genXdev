# Get-Ideas

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `ideas

## Synopsis

> Zeigt Ideen aus einer README.md-Datei an.

## Description

Zeigt alle Ideen aus dem Abschnitt „## Ideas“ einer README.md-Datei an. Kann entweder die README im aktuellen Verzeichnis, im PowerShell-Profilverzeichnis oder im OneDrive-Verzeichnis verwenden.

## Syntax

```powershell
Get-Ideas [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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

### Ideas -UseHomeREADME

```powershell
Ideas -UseHomeREADME
```

### Ideas -UseOneDriveREADME

```powershell
Ideas -UseOneDriveREADME
```

## Related Links

- [Get-Ideas on GitHub](https://github.com/genXdev/genXdev)
