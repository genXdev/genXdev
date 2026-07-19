# Get-HasCapableGpu

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> CUDA対応で十分なメモリを備えたGPUが存在するかどうかを判定します。

## Description

システムが少なくとも4GBのビデオRAMを搭載したCUDA対応GPUをチェックします。Windows管理ツール（WMI）を使用して、インストールされているビデオコントローラーを照会し、そのメモリ容量を確認します。このチェックは、大量のGPUメモリを必要とするAIワークロードに不可欠です。

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

システムにCUDA対応GPUが搭載されており、十分なメモリがあるか確認します。

## Related Links

- [Get-HasCapableGpu on GitHub](https://github.com/genXdev/genXdev)
