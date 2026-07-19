# Add-IssueLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `issue

## Synopsis

> Voegt een issue-item toe aan het README.md-bestand.

## Description

Voegt een timestamped issue toe aan de "## Issues" sectie van een README.md bestand.
Kan de gewijzigde sectie weergeven en openen in Visual Studio Code.

## Syntax

```powershell
Add-IssueLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | De kwestie tekst om toe te voegen |
| `-Code` | SwitchParameter | — | — | Named | — | Open README in Visual Studio Code |
| `-Show` | SwitchParameter | — | — | Named | — | Show the modified section |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Gebruik README in de PowerShell-profielmap |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Gebruik README in OneDrive-directory |
| `-Priority` | Int32 | — | — | Named | `1` | Prioriteit voor sorteren (hoger = eerst getoond, standaard 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Sorteer regels op datum (yyyyMMdd-voorvoegsel) in plaats van prioriteit |
| `-Ascending` | SwitchParameter | — | — | Named | — | Keer de sorteervolgorde om (oplopend in plaats van aflopend) |
| `-First` | Int32 | — | — | Named | `0` | Limiet - Toon uitvoer tot de eerste N regels |

## Examples

### Add-IssueLineToREADME -Line "Found critical bug" -Show -UseHomeREADME

```powershell
Add-IssueLineToREADME -Line "Found critical bug" -Show -UseHomeREADME
```

### issue "Server connection fails" -Show

```powershell
issue "Server connection fails" -Show
```

## Related Links

- [Add-IssueLineToREADME on GitHub](https://github.com/genXdev/genXdev)
