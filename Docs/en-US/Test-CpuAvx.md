# Test-CpuAvx

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Tests whether the CPU supports AVX and AVX2 instruction sets.

## Description

* Checks if the processor supports AVX and AVX2 instruction sets using
  Windows API (kernel32.dll IsProcessorFeaturePresent).
* Returns an object with AVX and AVX2 boolean properties.
* Useful for determining hardware compatibility for AI/ML workloads.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Checks CPU instruction set support and returns AVX/AVX2 availability.

## Related Links

- [Test-CpuAvx on GitHub](https://github.com/genXdev/genXdev)
