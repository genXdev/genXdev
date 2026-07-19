# Get-GenXDevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `gcmds

## Synopsis

> Retrieves and lists all GenXdev cmdlets and their details.

## Description

Recherche dans les modules GenXdev installés et les fichiers de script pour trouver les cmdlets, leurs alias et descriptions. Peut filtrer par modèle de nom et nom de module. Prend en charge le filtrage par définitions de cmdlets et offre des options de recherche flexibles à travers les chemins de modules locaux et publiés.

## Syntax

```powershell
Get-GenXDevCmdlet [[-CmdletName] <String[]>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [<CommonParameters>]

Get-GenXDevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | Motif de recherche pour filtrer les cmdlets 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | ^(function |filter |workflow )?(?<CommandName>[A-Za-z]+-[A-Za-z]+)\s*{ |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Noms de modules GenXdev à rechercher 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Ignorer la recherche dans les chemins de modules locaux |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Rechercher uniquement dans les chemins de modules publiés |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Rechercher dans les fichiers de script plutôt que dans les modules |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Inclut le répertoire scripts en plus des modules réguliers *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Effectuer une correspondance exacte au lieu d'une correspondance générique |

## Examples

### Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal

```powershell
Get-GenXDevCmdlet -CmdletName "Get-*" -ModuleName "Console" -NoLocal
```

### gcmds Get-*

```powershell
gcmds Get-*
```

### Get-GenXDevCmdlet -OnlyReturnModuleNames

```powershell
Get-GenXDevCmdlet -OnlyReturnModuleNames
```

## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Get-GenXDevCmdlet on GitHub](https://github.com/genXdev/genXdev)
