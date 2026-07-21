# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 测试 CPU 是否支持 AVX 和 AVX2 指令集。

## Description

* 使用 Windows API（kernel32.dll IsProcessorFeaturePresent）检查处理器是否支持 AVX 和 AVX2 指令集。
* 返回一个包含 AVX 和 AVX2 布尔属性的对象。
* 用于确定 AI/ML 工作负载的硬件兼容性。

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

检查 CPU 指令集支持并返回 AVX/AVX2 可用性。

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Get-NumberOfCpuCores.md)
