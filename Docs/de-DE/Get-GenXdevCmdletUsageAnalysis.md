# Get-GenXdevCmdletUsageAnalysis

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Analysiert GenXdev-Cmdlet-Nutzungsmuster, um die am häufigsten aufgerufenen Funktionen zu identifizieren.

## Description

Dieses Skript verwendet Get-GenXDevCmdlet, um alle GenXdev PowerShell-Module und deren Funktionen zu durchsuchen und zu analysieren, welche Cmdlets am häufigsten von anderen Cmdlets aufgerufen werden. Dies hilft dabei, zu priorisieren, welche Funktionen zuerst nach C# umgestellt werden sollen, beginnend mit den am häufigsten verwendeten.

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
