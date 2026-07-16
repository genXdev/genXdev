# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevTest [[-CmdletName] <String>] [[-TestFailedAction] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-AllowLongRunningTests] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [-SkipPesterTests] [-SkipPSAnalyzerTests] [-StackTraceVerbosity <String>] [-Verbosity <String>] [<CommonParameters>]

Assert-GenXdevTest [-IncludeScripts] [-SkipModuleImports] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Motif de recherche pour filtrer les cmdlets 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | Action à entreprendre en cas d'échec d'un test. Options : Demander, Continuer, Arrêter, RésoudreAvecIA, Write-Error, Throw |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | ^(function |filter |workflow )?(?<CommandName>[A-Za-z]+-[A-Za-z]+)\s*{ |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | Noms de modules GenXdev à rechercher 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Ignorer la recherche dans les chemins de modules locaux |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Rechercher uniquement dans les chemins de modules publiés |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Rechercher dans les fichiers de script plutôt que dans les modules |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Inclut le répertoire scripts en plus des modules réguliers *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Require exact matches for cmdlet names |
| `-Verbosity` | String | — | — | Named | `'Normal'` | Niveau de détail de la sortie |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | Niveau de détail de la trace de pile |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | Sélectionne également les tests unitaires qui ont des durées d'exécution longues |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | Saute l'importation des modules GenXdev avant les tests *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | Ignore l'appel aux tests PSAnalyzer |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | Ignore l'invocation des tests Pester |

## Related Links

- [Assert-GenXdevTest on GitHub](https://github.com/genXdev/genXdev)
