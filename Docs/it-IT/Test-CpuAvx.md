# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Verifica se la CPU supporta i set di istruzioni AVX e AVX2.

## Description

* Verifica se il processore supporta i set di istruzioni AVX e AVX2 utilizzando
  l'API di Windows (kernel32.dll IsProcessorFeaturePresent).
* Restituisce un oggetto con proprietà booleane AVX e AVX2.
* Utile per determinare la compatibilità hardware per carichi di lavoro AI/ML.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Verifica il supporto del set di istruzioni della CPU e restituisce la disponibilità di AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-NumberOfCpuCores.md)
