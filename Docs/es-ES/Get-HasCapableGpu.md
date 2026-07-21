# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Determina si hay una GPU compatible con CUDA y con suficiente memoria presente.

## Description

Comprueba el sistema en busca de GPUs compatibles con CUDA que tengan al menos 4 GB de RAM de video. Utiliza Instrumentación de Administración de Windows (WMI) para consultar los controladores de video instalados y verificar su capacidad de memoria. Esta comprobación es esencial para cargas de trabajo de IA que requieren una cantidad significativa de memoria de GPU.

## Syntax

```powershell
Get-HasCapableGpu [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hasGpu = Get-HasCapableGpu
Write-Host "System has capable GPU: $hasGpu"
```

Comprueba si el sistema tiene una GPU con capacidad CUDA y memoria suficiente.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Test-CpuAvx.md)
