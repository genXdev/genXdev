# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Voegt een regel toe aan een README.md-markdownbestand in een opgegeven sectie.

## Description

Zoekt en wijzigt een README.md-bestand door een nieuwe regel aan een opgegeven sectie toe te voegen.
Kan de sectie aanmaken als deze nog niet bestaat. Ondersteunt het opmaken van regels als codeblokken
en het tonen van de gewijzigde sectie.

Zoekt eerst in de huidige map, dan loopt het mappen omhoog om de README-locatie te vinden.
Als niet gevonden, gebruikt het de README in de PowerShell-profielmap.

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | The line to add to the README |
| `-Section` | String | ✅ | — | 0 | — | De sectie om de regel aan toe te voegen |
| `-Code` | SwitchParameter | — | — | Named | — | Open in Visual Studio Code na aanpassing |
| `-Show` | SwitchParameter | — | — | Named | — | Show the modified section |
| `-Done` | SwitchParameter | — | — | Named | — | Markeer het item als voltooid |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Gebruik README in de PowerShell-profielmap |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Gebruik README in OneDrive-directory |
| `-Priority` | Int32 | — | — | Named | `1` | Prioriteit voor sorteren (hoger = eerst getoond, standaard 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Sorteer regels op datum (yyyyMMdd-voorvoegsel) in plaats van prioriteit |
| `-Ascending` | SwitchParameter | — | — | Named | — | Keer de sorteervolgorde om (oplopend in plaats van aflopend) |
| `-First` | Int32 | — | — | Named | `0` | Limiet - Toon uitvoer tot de eerste N regels |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Related Links

- [Add-LineToREADME on GitHub](https://github.com/genXdev/genXdev)
