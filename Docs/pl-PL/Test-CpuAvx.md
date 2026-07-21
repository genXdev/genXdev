# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Testuje, czy procesor obsługuje zestawy instrukcji AVX i AVX2.

## Description

* Sprawdza, czy procesor obsługuje zestawy instrukcji AVX i AVX2 za pomocą
  interfejsu API systemu Windows (kernel32.dll IsProcessorFeaturePresent).
* Zwraca obiekt z właściwościami logicznymi AVX i AVX2.
* Przydatne do określania zgodności sprzętowej dla obciążeń AI/ML.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Sprawdza obsługę zestawu instrukcji CPU i zwraca dostępność AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-NumberOfCpuCores.md)
