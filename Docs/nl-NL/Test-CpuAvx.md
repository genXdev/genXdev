# Test-CpuAvx

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Test of de CPU de AVX- en AVX2-instructiesets ondersteunt.

## Description

* Controleert of de processor de AVX- en AVX2-instructiesets ondersteunt met behulp van de Windows API (kernel32.dll IsProcessorFeaturePresent).
* Retourneert een object met AVX- en AVX2-booleaanse eigenschappen.
* Nuttig voor het bepalen van hardwarecompatibiliteit voor AI/ML-workloads.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Controleert de ondersteuning van de CPU-instructieset en retourneert de beschikbaarheid van AVX/AVX2.

## Related Links

- [Test-CpuAvx on GitHub](https://github.com/genXdev/genXdev)
