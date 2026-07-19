# Get-Ideas

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `ideas

## Synopsis

> Toont ideeën uit een README.md-bestand.

## Description

Toont alle ideeën uit de sectie "## Ideeën" van een README.md-bestand. Kan zowel de README in de huidige locatie, de PowerShell-profielmap of de OneDrive-map gebruiken.

## Syntax

```powershell
Get-Ideas [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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
