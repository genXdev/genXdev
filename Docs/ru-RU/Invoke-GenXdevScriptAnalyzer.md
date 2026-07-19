# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Запускает анализатор сценариев PowerShell для анализа сценариев PowerShell на соответствие требованиям и рекомендациям.

## Description

Эта функция предоставляет оболочку вокруг PSScriptAnalyzer для анализа PowerShell-скриптов на предмет соответствия требованиям, нарушений лучших практик и потенциальных ошибок. Она поддерживает как анализ на основе файлов, так и анализ на основе строк с настраиваемыми правилами и настройками.

## Syntax

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptFilePath <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer -ScriptDefinition <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer [-EnableExit] [-Fix] [-Recurse] [-ReportSummary] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ScriptFilePath` | String | ✅ | — | 0 | — | Указывает путь к файлу сценария. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | Определяет строковое определение сценария. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | Указывает, что инструмент должен завершать работу при ошибке. |
| `-Fix` | SwitchParameter | — | — | Named | — | Включает автоматическое исправление нарушений. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Recursively process files. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | Сообщает сводку после анализа. |

## Examples

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"
```

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix
```

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)
