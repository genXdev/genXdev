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
| `-ScriptFilePath` | String | ✅ | — | 0 | — | 指定脚本文件的路径。 *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | 将脚本定义指定为字符串。 *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | 指定工具在出错时退出。 |
| `-Fix` | SwitchParameter | — | — | Named | — | 启用违规自动修复。 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 递归处理文件。 |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | 分析后报告摘要。 |

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)
