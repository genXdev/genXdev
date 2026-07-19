# Test-CpuAvx

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Testet, ob die CPU die AVX- und AVX2-Befehlssätze unterstützt.

## Description

* Überprüft, ob der Prozessor die Befehlssätze AVX und AVX2 unterstützt, mithilfe der
  Windows-API (kernel32.dll IsProcessorFeaturePresent).
* Gibt ein Objekt mit den booleschen Eigenschaften AVX und AVX2 zurück.
* Nützlich zur Bestimmung der Hardware-Kompatibilität für KI/ML-Workloads.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Überprüft die Unterstützung des CPU-Befehlssatzes und gibt die Verfügbarkeit von AVX/AVX2 zurück.

## Related Links

- [Test-CpuAvx on GitHub](https://github.com/genXdev/genXdev)
