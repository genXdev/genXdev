# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算并返回系统中逻辑 CPU 核心的总数。

## Description

通过Windows Management Instrumentation (WMI) 查询系统硬件，确定逻辑CPU核心的总数。该函数通过将物理核心数乘以2来考虑超线程技术。

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

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Test-CpuAvx.md)
