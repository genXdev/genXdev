# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Testet, ob die CPU die Befehlssätze AVX und AVX2 unterstützt.

## Description

* Überprüft, ob der Prozessor AVX und AVX2 Befehlssätze unterstützt, mithilfe der Windows-API (kernel32.dll IsProcessorFeaturePresent).
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

Überprüft die CPU-Befehlssatzunterstützung und gibt die Verfügbarkeit von AVX/AVX2 zurück.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-NumberOfCpuCores.md)
