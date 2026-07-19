# Get-Todoos

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todoos

## Synopsis

> Zeigt Aufgaben aus einer README.md-Datei an.

## Description

Zeigt alle Todo-Elemente aus dem Abschnitt "## Todoos" einer README.md-Datei. Kann entweder die README im aktuellen Verzeichnis, das PowerShell-Profilverzeichnis oder das OneDrive-Verzeichnis verwenden.

## Syntax

```powershell
Get-Todoos [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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

### Todoos -UseHomeREADME

```powershell
Todoos -UseHomeREADME
```

### Todoos -UseOneDriveREADME

```powershell
Todoos -UseOneDriveREADME
```

## Related Links

- [Get-Todoos on GitHub](https://github.com/genXdev/genXdev)
