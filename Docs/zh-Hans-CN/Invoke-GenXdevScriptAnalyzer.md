# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 调用 PowerShell 脚本分析器，分析 PowerShell 脚本的合规性和最佳实践。

## Description

此函数提供了围绕PSScriptAnalyzer的封装，用于分析PowerShell脚本中的合规性问题、最佳实践违规和潜在错误。它支持基于文件的分析和基于字符串的脚本分析，并具有可自定义的规则和设置。

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
