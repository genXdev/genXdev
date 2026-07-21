# Test-CpuAvx

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Comprueba si la CPU admite los conjuntos de instrucciones AVX y AVX2.

## Description

* Comprueba si el procesador admite los conjuntos de instrucciones AVX y AVX2 mediante la API de Windows (kernel32.dll IsProcessorFeaturePresent).
* Devuelve un objeto con propiedades booleanas AVX y AVX2.
* Útil para determinar la compatibilidad de hardware para cargas de trabajo de IA/ML.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Comprueba la compatibilidad del conjunto de instrucciones de la CPU y devuelve la disponibilidad de AVX/AVX2.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-NumberOfCpuCores.md)
