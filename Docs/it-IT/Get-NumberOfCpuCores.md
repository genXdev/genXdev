# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcola e restituisce il numero totale di core CPU logici presenti nel sistema.

## Description

Interroga l'hardware del sistema tramite Windows Management Instrumentation (WMI) per determinare il numero totale di core logici della CPU. Il cmdlet tiene conto dell'hyperthreading moltiplicando per 2 il numero di core fisici. Questa informazione è utile per ottimizzare le attività di elaborazione parallela e comprendere le capacità del sistema.

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

Recupera il numero totale di core CPU logici disponibili sul sistema.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Test-CpuAvx.md)
