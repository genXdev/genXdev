# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 十分なメモリを搭載したCUDA対応GPUが存在するかどうかを判断します。

## Description

システムでCUDA互換のGPUをチェックし、ビデオRAMが少なくとも4GBあることを確認します。Windows Management Instrumentation (WMI) を使用して、インストールされているビデオコントローラーを照会し、そのメモリ容量を検証します。このチェックは、大量のGPUメモリを必要とするAIワークロードに不可欠です。

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

システムに十分なメモリを備えたCUDA対応GPUが搭載されているかどうかを確認します。

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/Test-CpuAvx.md)
