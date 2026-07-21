# Get-HasCapableGpu

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Determina se è presente una GPU compatibile con CUDA con memoria sufficiente.

## Description

Controlla il sistema per GPU compatibili con CUDA con almeno 4 GB di RAM video. Utilizza Windows Management Instrumentation (WMI) per interrogare i controller video installati e verificare la loro capacità di memoria. Questo controllo è essenziale per carichi di lavoro AI che richiedono una quantità significativa di memoria GPU.

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

Verifica se il sistema dispone di una GPU compatibile con CUDA con memoria sufficiente.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-CpuCore.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Test-CpuAvx.md)
