# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula y devuelve el número total de núcleos de CPU lógicos del sistema.

## Description

Consulta el hardware del sistema a través de Instrumental de Administración de Windows (WMI) para determinar el número total de núcleos lógicos de CPU. La función tiene en cuenta la hiperhilos multiplicando el número de núcleos físicos por 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Obtiene el número total de núcleos de CPU lógicos.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Test-CpuAvx.md)
