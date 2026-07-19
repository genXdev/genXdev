# Get-NumberOfCpuCores

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算并返回系统中逻辑CPU核心的总数。

## Description

通过Windows管理规范（WMI）查询系统硬件，确定逻辑CPU核心总数。该cmdlet将物理核心数乘以2以考虑超线程。此信息有助于优化并行处理任务并了解系统能力。

## Syntax

```powershell
Get-NumberOfCpuCores [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$cores = Get-NumberOfCpuCores
Write-Host "System has $cores logical CPU cores available"
```

检索系统上可用的逻辑 CPU 核心总数。

## Related Links

- [Get-NumberOfCpuCores on GitHub](https://github.com/genXdev/genXdev)
