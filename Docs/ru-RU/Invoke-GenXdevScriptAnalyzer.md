# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)
