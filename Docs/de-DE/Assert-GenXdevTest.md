# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests

## Synopsis

> Führt Komponententests für GenXdev-Module, Untermodule oder Cmdlets mit intelligenter Fehlersuche und KI-gestützter Fehlerbehebung aus.

## Description

Diese Funktion stellt ein Testframework für GenXdev-Module bereit, das mehrstufige Testausführung von ganzen Modulen bis hin zu einzelnen Cmdlets ermöglicht. Es integriert PSScriptAnalyzer für statische Codeanalyse, Pester für Unit-Tests und PSScriptAnalyzer für statische Codeanalyse. Die Funktion beinhaltet intelligente Fehlerbehandlung mit KI-gestützten Lösungsmöglichkeiten und detaillierte Fortschrittsberichte für Entwicklungsworkflows.

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
