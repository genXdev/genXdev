# Get-Features

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `features

## Synopsis

> Zeigt Funktionen aus einer README.md-Datei an.

## Description

This command displays all features from the "## Features" section of a README.md file. It can use the README in the current location, the PowerShell profile directory, or the OneDrive directory.

## Syntax

```powershell
Get-Features [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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

### Features -UseHomeREADME

```powershell
Features -UseHomeREADME
```

## Related Links

- [Get-Features on GitHub](https://github.com/genXdev/genXdev)
