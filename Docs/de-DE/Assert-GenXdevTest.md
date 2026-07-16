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
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Suchmuster zum Filtern von Cmdlets 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | Aktion bei fehlschlagendem Test. Optionen: Fragen, Fortfahren, Anhalten, SolveWithAI, Write-Error, Throw |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | Regular expression to match cmdlet definitions |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | GenXdev-Modulnamen zum Suchen 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Überspringen der Suche in lokalen Modulpfaden |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Nur in veröffentlichten Modulpfaden suchen |
| `-FromScripts` | SwitchParameter | — | — | Named | — | In Skriptdateien statt in Modulen suchen |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Enthält zusätzlich zu den regulären Modulen das Scripts-Verzeichnis *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | ['module1', 'module2'] |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Erfordert exakte Übereinstimmungen für Cmdlet-Namen |
| `-Verbosity` | String | — | — | Named | `'Normal'` | Output detail level |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | Stack-Trace-Detaillierungsgrad |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | Wählt außerdem Komponententests mit langer Laufzeit aus |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | Überspringt das Importieren von GenXdev-Modulen vor dem Testen *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | Überspringt die Ausführung von PSAnalyzer-Tests |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | Überspringt das Aufrufen von Pester-Tests |

## Related Links

- [Assert-GenXdevTest on GitHub](https://github.com/genXdev/genXdev)
