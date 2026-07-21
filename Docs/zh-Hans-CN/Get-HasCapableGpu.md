# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 确定是否存在具有足够内存的、支持 CUDA 的 GPU。

## Description

检查系统中是否有至少4GB显存的CUDA兼容GPU。它使用Windows Management Instrumentation (WMI) 查询已安装的视频控制器并验证其内存容量。此检查对于需要大量GPU内存的AI工作负载至关重要。

## Syntax

```powershell
Get-HasCapableGpu [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hasGpu = Get-HasCapableGpu
Write-Host "System has capable GPU: $hasGpu"
```

检查系统是否具有足够内存的CUDA兼容GPU。

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Test-CpuAvx.md)
