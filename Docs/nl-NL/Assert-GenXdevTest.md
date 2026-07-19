# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests

## Synopsis

> Voert eenheid tests uit voor GenXdev modules, sub-modules of cmdlets
met intelligente debugging en AI-gestuurde foutoplossing.

## Description

Deze functie biedt een testframework voor GenXdev-modules en ondersteunt testuitvoering op meerdere niveaus, van volledige modules tot individuele cmdlets. Het integreert PSScriptAnalyzer voor statische codeanalyse, Pester voor unittesten en PSScriptAnalyzer voor statische codeanalyse. De functie bevat intelligente foutafhandeling met AI-gestuurde oplossingsmogelijkheden en gedetailleerde voortgangsrapportage voor ontwikkelworkflows.

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

## Examples

### Assert-GenXdevTest -ModuleName "GenXdev.AI" Executes all tests for the GenXdev.AI module including PSScriptAnalyzer and Pester tests.

```powershell
Assert-GenXdevTest -ModuleName "GenXdev.AI"
Executes all tests for the GenXdev.AI module including PSScriptAnalyzer and
Pester tests.
```

### Assert-GenXdevTest -SubModuleName "GenXdev.Coding.PowerShell.Modules" `     -TestFailedAction SolveWithAI Tests the specified sub-module and uses AI to automatically resolve any failures encountered during testing.

```powershell
Assert-GenXdevTest -SubModuleName "GenXdev.Coding.PowerShell.Modules" `
    -TestFailedAction SolveWithAI
Tests the specified sub-module and uses AI to automatically resolve any
failures encountered during testing.
```

### Assert-GenXdevTest -CmdletName "Get-GenXDevCmdlet" -Verbosity Detailed Tests the specific cmdlet with detailed output showing all test operations and results.

```powershell
Assert-GenXdevTest -CmdletName "Get-GenXDevCmdlet" -Verbosity Detailed
Tests the specific cmdlet with detailed output showing all test operations
and results.
```

### testcmdlet Assert-GenXdevTest Uses the alias to test the current cmdlet with default settings.

```powershell
testcmdlet Assert-GenXdevTest
Uses the alias to test the current cmdlet with default settings.
```

## Related Links

- [Assert-GenXdevTest on GitHub](https://github.com/genXdev/genXdev)
