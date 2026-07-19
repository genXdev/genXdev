# Test-CpuAvx

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 测试CPU是否支持AVX和AVX2指令集。

## Description

使用 Windows API（kernel32.dll IsProcessorFeaturePresent）检查处理器是否支持 AVX 和 AVX2 指令集。返回一个包含 AVX 和 AVX2 布尔属性的对象。用于确定 AI/ML 工作负载的硬件兼容性。

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

检查CPU指令集支持情况并返回AVX/AVX2可用性。

## Related Links

- [Test-CpuAvx on GitHub](https://github.com/genXdev/genXdev)
