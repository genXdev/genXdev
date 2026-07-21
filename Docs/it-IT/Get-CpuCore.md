# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcola e restituisce il numero totale di core CPU logici presenti nel sistema.

## Description

Interroga l'hardware del sistema tramite Windows Management Instrumentation (WMI) per determinare il numero totale di core CPU logici. La funzione tiene conto dell'hyperthreading moltiplicando per 2 il numero di core fisici.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Ottiene il numero totale di core CPU logici.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Test-CpuAvx.md)
