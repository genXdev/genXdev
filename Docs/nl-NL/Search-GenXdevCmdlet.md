# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> Zoekt naar een GenXdev-cmdlet en opent deze optioneel in een IDE om te bewerken.

## Description

Deze functie zoekt naar GenXdev-cmdlets met behulp van een patroon en opent optioneel het bronbestand van de gevonden cmdlet in Visual Studio Code of Visual Studio om te bewerken. Het haalt cmdlet-informatie op en biedt sneltoetsen om snel naar de functiedefinitie te navigeren.

## Syntax

```powershell
Search-GenXdevCmdlet [[-CmdletName] <String>] [[-ModuleName] <String[]>] [-Code] [-EditCmdlet] [-FromScripts] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Zoekpatroon om cmdlets te filteren 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev module te doorzoeken 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Zoeken in lokale modulepaden overslaan |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Beperk zoeken tot gepubliceerde modulepaden |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Doorzoek scriptbestanden in plaats van modulebestanden |
| `-Code` | SwitchParameter | — | — | Named | — | Open de gevonden cmdlet in Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open de gevonden cmdlet in Visual Studio |
| `-EditCmdlet` | SwitchParameter | — | — | Named | — | Opent ook het bestand in de editor na het vinden |

## Examples

### Search-GenXdevCmdlet -CmdletName "Get-*" -Code Opens first matching cmdlet starting with "Get-" in Visual Studio Code.

```powershell
Search-GenXdevCmdlet -CmdletName "Get-*" -Code
Opens first matching cmdlet starting with "Get-" in Visual Studio Code.
```

### searchcmdlet "Set-GitConfig" -EditCmdlet Searches for Set-GitConfig cmdlet and opens it for editing.

```powershell
searchcmdlet "Set-GitConfig" -EditCmdlet
Searches for Set-GitConfig cmdlet and opens it for editing.
```

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
