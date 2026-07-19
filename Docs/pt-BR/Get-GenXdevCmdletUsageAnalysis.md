# Get-GenXdevCmdletUsageAnalysis

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Analisa os padrões de uso de cmdlets do GenXdev para identificar as funções mais frequentemente chamadas.

## Description

Este script usa Get-GenXDevCmdlet para digitalizar todos os módulos PowerShell da GenXdev e suas funções, a fim de analisar quais cmdlets são chamados com mais frequência por outros cmdlets. Isso ajuda a priorizar quais funções refatorar para C# primeiro, começando pelas mais comumente usadas.

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
