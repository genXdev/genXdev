# Get-ReleaseNotes

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `releasenotes

## Synopsis

> Toont de ReleaseNotes van een README.md-bestand.

## Description

Geeft alle ReleaseNotes weer uit de sectie "## Release notes" van een README.md-bestand. Kan gebruikmaken van
de README in de huidige locatie, de PowerShell-profielmap, of
de OneDrive-map.

## Syntax

```powershell
Get-ReleaseNotes [[-First] <Int32>] [-Ascending] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
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

### ReleaseNotes -UseHomeREADME

```powershell
ReleaseNotes -UseHomeREADME
```

## Related Links

- [Get-ReleaseNotes on GitHub](https://github.com/genXdev/genXdev)
