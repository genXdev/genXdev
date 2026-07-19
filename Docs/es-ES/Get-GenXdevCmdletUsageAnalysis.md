# Get-GenXdevCmdletUsageAnalysis

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Analiza los patrones de uso de cmdlets de GenXdev para identificar las funciones más frecuentemente invocadas.

## Description

Este script utiliza Get-GenXDevCmdlet para escanear todos los módulos de PowerShell de GenXdev y sus funciones con el fin de analizar qué cmdlets son llamados con más frecuencia por otros cmdlets. Esto ayuda a priorizar qué funciones refactorizar a C# primero, comenzando por las más utilizadas.

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
