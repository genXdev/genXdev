# Get-GenXdevCmdletUsageAnalysis

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev cmdlet 사용 패턴을 분석하여 가장 자주 호출되는 함수를 식별합니다.

## Description

이 스크립트는 Get-GenXDevCmdlet을 사용하여 모든 GenXdev PowerShell 모듈과 그 함수들을 스캔하여 다른 cmdlet에 의해 가장 자주 호출되는 cmdlet을 분석합니다. 이는 가장 많이 사용되는 함수부터 우선적으로 C#으로 리팩토링할 우선순위를 정하는 데 도움이 됩니다.

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
