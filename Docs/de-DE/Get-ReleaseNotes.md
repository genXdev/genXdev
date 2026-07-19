# Get-ReleaseNotes

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `releasenotes

## Synopsis

> Zeigt ReleaseNotes aus einer README.md-Datei an.

## Description

Zeigt alle ReleaseNotes aus dem Abschnitt "## Release notes" einer README.md-Datei. Kann entweder die README im aktuellen Verzeichnis, im PowerShell-Profilverzeichnis oder im OneDrive-Verzeichnis verwenden.

## Syntax

```powershell
Get-ReleaseNotes [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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

### ReleaseNotes -UseHomeREADME

```powershell
ReleaseNotes -UseHomeREADME
```

## Related Links

- [Get-ReleaseNotes on GitHub](https://github.com/genXdev/genXdev)
