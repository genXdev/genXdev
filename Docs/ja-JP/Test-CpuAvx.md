# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> CPUがAVXおよびAVX2命令セットをサポートしているかどうかをテストします。

## Description

* Windows API（kernel32.dll IsProcessorFeaturePresent）を使用して、プロセッサがAVXおよびAVX2命令セットをサポートしているかどうかを確認します。
* AVXとAVX2のブール型プロパティを持つオブジェクトを返します。
* AI/MLワークロードのハードウェア互換性を判断するのに役立ちます。

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

CPUの命令セットサポートを確認し、AVX/AVX2の互換性を返します。

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-NumberOfCpuCores.md)
