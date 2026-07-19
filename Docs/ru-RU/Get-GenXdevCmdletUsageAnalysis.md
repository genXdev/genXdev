# Get-GenXdevCmdletUsageAnalysis

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Анализирует шаблоны использования командлетов GenXdev для выявления наиболее часто вызываемых функций.

## Description

Этот скрипт использует Get-GenXDevCmdlet для сканирования всех модулей PowerShell GenXdev и их функций, чтобы проанализировать, какие командлеты чаще всего вызываются другими командлетами. Это помогает определить приоритетность функций для рефакторинга на C# в первую очередь, начиная с наиболее часто используемых.

## Syntax

```powershell
Get-GenXdevCmdletUsageAnalysis [[-OutputFormat] <String>] [[-Top] <Int32>] [-IncludeCallChains] [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OutputFormat` | String | — | — | 0 | `'Table'` | The `-OutputFormat` parameter. |
| `-Top` | Int32 | — | — | 1 | `50` | The `-Top` parameter. |
| `-IncludeCallChains` | SwitchParameter | — | — | Named | — | The `-IncludeCallChains` parameter. |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | The `-IncludeScripts` parameter. |

## Examples

### Get-GenXdevCmdletUsageAnalysis

```powershell
Get-GenXdevCmdletUsageAnalysis
```

### Get-GenXdevCmdletUsageAnalysis -Top 20 -OutputFormat List

```powershell
Get-GenXdevCmdletUsageAnalysis -Top 20 -OutputFormat List
```

### Get-GenXdevCmdletUsageAnalysis -IncludeCallChains -IncludeScripts | Export-Csv -Path "cmdlet-usage.csv"

```powershell
Get-GenXdevCmdletUsageAnalysis -IncludeCallChains -IncludeScripts | Export-Csv -Path "cmdlet-usage.csv"
```

## Related Links

- [Get-GenXdevCmdletUsageAnalysis on GitHub](https://github.com/genXdev/genXdev)
