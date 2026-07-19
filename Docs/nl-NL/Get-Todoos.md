# Get-Todoos

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todoos

## Synopsis

> Weergeeft taken uit een README.md-bestand.

## Description

Toont alle todo-items uit de sectie "## Todoos" van een README.md-bestand. Kan het README in de huidige locatie, de PowerShell-profielmap of de OneDrive-map gebruiken.

## Syntax

```powershell
Get-Todoos [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Gebruik README in de PowerShell-profielmap |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Gebruik README in OneDrive-directory |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Sorteer regels op datum (yyyyMMdd-voorvoegsel) in plaats van prioriteit |
| `-Ascending` | SwitchParameter | — | — | Named | — | Keer de sorteervolgorde om (oplopend in plaats van aflopend) |
| `-First` | Int32 | — | — | 0 | `0` | Beperk de uitvoer tot de eerste N regels |

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
