# Test-CpuAvx

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> CPUがAVXおよびAVX2命令セットをサポートしているかテストします。

## Description

* Windows API (kernel32.dll IsProcessorFeaturePresent) を使用して、プロセッサが AVX および AVX2 命令セットをサポートしているかどうかを確認します。
* AVX と AVX2 のブール型プロパティを持つオブジェクトを返します。
* AI/ML ワークロードのハードウェア互換性を判断するのに役立ちます。

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

CPUの命令セット対応をチェックし、AVX/AVX2の利用可能性を返します。

## Related Links

- [Test-CpuAvx on GitHub](https://github.com/genXdev/genXdev)
