# Show-GenXdevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `cmds

## Synopsis

> Displays GenXdev PowerShell modules with their cmdlets and aliases.

## Description

Répertorie tous les modules PowerShell GenXdev installés ainsi que leurs cmdlets et alias associés. Utilise Get-GenXDevCmdlet pour récupérer les informations sur les cmdlets et éventuellement leurs positions dans les scripts. Offre des options de filtrage et divers affichages.

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Motif de recherche pour filtrer les cmdlets 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | ^(function |filter |workflow )?(?<CommandName>[A-Za-z]+-[A-Za-z]+)\s*{ |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Noms de modules GenXdev à rechercher 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Ignorer la recherche dans les chemins de modules locaux |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Rechercher uniquement dans les chemins de modules publiés |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Rechercher dans les fichiers de script plutôt que dans les modules |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Inclut le répertoire scripts en plus des modules réguliers *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Effectuer une correspondance exacte au lieu d'une correspondance générique |
| `-Online` | SwitchParameter | — | — | Named | — | Ouvrir la documentation GitHub au lieu de la sortie console |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | Lorsqu'il est spécifié, affiche uniquement les alias des applets de commande |
| `-ShowTable` | SwitchParameter | — | — | Named | — | Afficher les résultats sous forme de tableau |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Examples

### Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable Lists all cmdlets starting with "Get" in the Console module as a table

```powershell
Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable
Lists all cmdlets starting with "Get" in the Console module as a table
```

### cmds get -m console Lists all cmdlets starting with "Get" in the Console module

```powershell
cmds get -m console
Lists all cmdlets starting with "Get" in the Console module
```

### Show-GenXdevCmdlet -OnlyReturnModuleNames Returns only unique module names

```powershell
Show-GenXdevCmdlet -OnlyReturnModuleNames
Returns only unique module names
```

## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Show-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
