# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ottiene il numero totale di monitor collegati al sistema.

## Description

* Utilizza la classe helper Screen di Windows Presentation Foundation (WPF) per determinare con precisione il numero di monitor fisici attualmente collegati al sistema.
* Questo include sia i monitor attivi che quelli rilevati ma disabilitati.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Restituisce il numero totale di monitor collegati (es. 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Restituisce il conteggio dei monitor con output dettagliato che mostra il processo di rilevamento.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Test-CpuAvx.md)
