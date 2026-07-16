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
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Zoekpatroon om cmdlets te filteren 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | Actie wanneer een test mislukt. Opties: Vragen, Doorgaan, Stoppen, OplossenMetAI, FoutSchrijven, Gooien |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | Reguliere expressie om cmdlet-definities te matchen |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | GenXdev module te doorzoeken 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Zoeken in lokale modulepaden overslaan |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Alleen zoeken in gepubliceerde modulepaden |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Zoeken in scriptbestanden in plaats van modules |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Bevat de scripts-directory naast reguliere modules *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Vereis exacte overeenkomsten voor cmdlet-namen |
| `-Verbosity` | String | — | — | Named | `'Normal'` | Uitvoerdetailniveau |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | Detailniveau van de stacktrace |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | Selecteert ook unit-tests met lange uitvoeringsduur |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | Slaat het importeren van GenXdev-modules over vóór het testen *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | Slaat het aanroepen van PSAnalyzer-tests over |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | Slaat het aanroepen van Pester-tests over |

## Related Links

- [Assert-GenXdevTest on GitHub](https://github.com/genXdev/genXdev)
