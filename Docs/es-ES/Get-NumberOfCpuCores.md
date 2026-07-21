# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula y devuelve el número total de núcleos de CPU lógicos del sistema.

## Description

Consulta el hardware del sistema a través de Instrumental de Administración de Windows (WMI) para determinar el número total de núcleos lógicos de CPU. El cmdlet tiene en cuenta la hiperhilitación multiplicando el recuento de núcleos físicos por 2. Esta información es útil para optimizar tareas de procesamiento en paralelo y comprender las capacidades del sistema.

## Syntax

```powershell
Get-NumberOfCpuCores [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$cores = Get-NumberOfCpuCores
Write-Host "System has $cores logical CPU cores available"
```

Recupera el número total de núcleos de CPU lógicos disponibles en el sistema.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Test-CpuAvx.md)
