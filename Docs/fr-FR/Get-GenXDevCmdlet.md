# Get-GenXDevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `gcmds

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Get-GenXDevCmdlet on GitHub](https://github.com/genXdev/genXdev)
