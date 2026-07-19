# Get-CpuCore

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates and returns the total number of logical CPU cores in the system.

## Description

Queries the system hardware through Windows Management Instrumentation (WMI) to determine the total number of logical CPU cores. The function accounts for hyperthreading by multiplying the physical core count by 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Gets the total number of logical CPU cores.

## Related Links

- [Get-CpuCore on GitHub](https://github.com/genXdev/genXdev)
