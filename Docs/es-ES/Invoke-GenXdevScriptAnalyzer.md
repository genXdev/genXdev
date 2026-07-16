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
| `-ScriptFilePath` | String | ✅ | — | 0 | — | Specifies the path to the script file. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | Especifica la definición del script como una cadena. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | Specifies that the tool should exit on error. |
| `-Fix` | SwitchParameter | — | — | Named | — | Permite la corrección automática de infracciones. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Recursively process files. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | Informa un resumen después del análisis. |

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)
