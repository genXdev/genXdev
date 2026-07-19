# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests

## Synopsis

> Выполняет модульные тесты для модулей, подмодулей или командлетов GenXdev с интеллектуальной отладкой и разрешением ошибок на основе ИИ.

## Description

Эта функция предоставляет тестовую среду для модулей GenXdev, обеспечивая многоуровневое выполнение тестов от целых модулей до отдельных командлетов. Она интегрирует PSScriptAnalyzer для статического анализа кода, Pester для модульного тестирования и PSScriptAnalyzer для статического анализа кода. Функция включает интеллектуальную обработку ошибок с возможностями разрешения на основе ИИ и детальную отчетность о прогрессе для рабочих процессов разработки.

## Syntax

```powershell
Assert-GenXdevTest [[-CmdletName] <String>] [[-TestFailedAction] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-AllowLongRunningTests] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [-SkipPesterTests] [-SkipPSAnalyzerTests] [-StackTraceVerbosity <String>] [-Verbosity <String>] [<CommonParameters>]

Assert-GenXdevTest [-IncludeScripts] [-SkipModuleImports] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Шаблон поиска для фильтрации командлетов 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | Действие при сбое теста. Варианты: Ask, Continue, Stop, SolveWithAI, Write-Error, Throw |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | Регулярное выражение для сопоставления определений командлетов |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | GenXdev - названия модулей для поиска 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Пропустить поиск в локальных путях модулей |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Поиск только в опубликованных путях модулей |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Поиск в файлах скриптов вместо модулей |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Включает каталог сценариев в дополнение к обычным модулям *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Require exact matches for cmdlet names |
| `-Verbosity` | String | — | — | Named | `'Normal'` | Уровень детализации вывода |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | Уровень детализации трассировки стека |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | Также выбирает модульные тесты с длительным временем выполнения. |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | Пропускает импорт модулей GenXdev перед тестированием *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | Пропускает вызовы тестов PSAnalyzer |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | Пропускает выполнение тестов Pester |

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
