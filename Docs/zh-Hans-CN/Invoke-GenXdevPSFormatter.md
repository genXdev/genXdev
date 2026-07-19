# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 使用 PSScriptAnalyzer 格式化规则格式化 PowerShell 脚本文件。

## Description

此函数使用 PSScriptAnalyzer 的 Invoke-Formatter cmdlet 对脚本文件应用 PowerShell 格式化规则。它可以处理单个文件，或递归地格式化目录中的多个文件。该函数使用可自定义的格式化设置，并提供格式化过程的详细日志记录。

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 指定要格式化的脚本文件的路径。 |
| `-Settings` | Object | — | — | Named | — | 一个设置哈希表或指向包含格式化设置的 PowerShell 数据文件 (.psd1) 的路径。 |
| `-Range` | Int32[] | — | — | Named | — | 格式化应发生的范围，以四个整数的数组表示：起始行号、起始列号、结束行号、结束列号。 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 递归处理子目录中的文件。 |

## Examples

### Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse
```

### "MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}

```powershell
"MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}
```

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
