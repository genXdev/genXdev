# Get-CpuCore

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算并返回系统中逻辑CPU核心的总数。

## Description

通过Windows管理规范（WMI）查询系统硬件，确定逻辑CPU核心总数。该函数通过将物理核心数乘以2来考虑超线程技术。

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

获取逻辑 CPU 核心的总数。

## Related Links

- [Get-CpuCore on GitHub](https://github.com/genXdev/genXdev)
