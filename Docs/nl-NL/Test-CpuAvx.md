# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Test of de CPU de AVX- en AVX2-instructiesets ondersteunt.

## Description

* Controleert of de processor de AVX- en AVX2-instructiesets ondersteunt via
  de Windows API (kernel32.dll IsProcessorFeaturePresent).
* Retourneert een object met de booleaanse eigenschappen AVX en AVX2.
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

Controleert ondersteuning voor CPU-instructiesets en retourneert beschikbaarheid van AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-NumberOfCpuCores.md)
