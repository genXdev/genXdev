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
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Search pattern to filter cmdlets 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | Action to take when a test fails. Options: Ask, Continue, Stop, SolveWithAI, Write-Error, Throw |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | Regular expression to match cmdlet definitions |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | GenXdev module names to search 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Skip searching in local module paths |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Only search in published module paths |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Search in script files instead of modules |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Includes the scripts directory in addition to regular modules *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Require exact matches for cmdlet names |
| `-Verbosity` | String | — | — | Named | `'Normal'` | Output detail level |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | Stack trace detail level |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | Also selects unit-tests that have long running durations |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | Skips importing GenXdev modules before testing *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | Skips invoking PSAnalyzer tests |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | Skips invoking Pester tests |

## Related Links

- [Assert-GenXdevTest on GitHub](https://github.com/genXdev/genXdev)
