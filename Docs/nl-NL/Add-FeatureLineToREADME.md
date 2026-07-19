# Add-FeatureLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `feature

## Synopsis

> Adds a feature line to the README file with a timestamp.

## Description

Voegt een feature-regel toe aan het opgegeven README-bestand, voorafgegaan door de huidige datum in yyyyMMdd-formaat. De regel kan worden opgemaakt als code en optioneel worden weergegeven.

## Syntax

```powershell
Add-FeatureLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | De functiebeschrijvingstekst om toe te voegen |
| `-Code` | SwitchParameter | — | — | Named | — | `Format the line as code` |
| `-Show` | SwitchParameter | — | — | Named | — | README
=====

This is the README file. |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Gebruik README in de thuismap |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Gebruik README in OneDrive-directory |
| `-Priority` | Int32 | — | — | Named | `1` | Prioriteit voor sorteren (hoger = eerst getoond, standaard 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Sorteer regels op datum (yyyyMMdd-voorvoegsel) in plaats van prioriteit |
| `-Ascending` | SwitchParameter | — | — | Named | — | Keer de sorteervolgorde om (oplopend in plaats van aflopend) |
| `-First` | Int32 | — | — | Named | `0` | Limiet - Toon uitvoer tot de eerste N regels |

## Examples

### Add-FeatureLineToREADME -Line "Added new Git feature"

```powershell
Add-FeatureLineToREADME -Line "Added new Git feature"
```

### feature "Added new Git feature" -Code -Show

```powershell
feature "Added new Git feature" -Code -Show
```

## Related Links

- [Add-FeatureLineToREADME on GitHub](https://github.com/genXdev/genXdev)
