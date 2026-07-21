# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Beräknar och returnerar det totala antalet logiska CPU-kärnor i systemet.

## Description

Frågar systemets maskinvara via Windows Management Instrumentation (WMI) för att fastställa det totala antalet logiska CPU-kärnor. Funktionen tar hänsyn till hypertrådning genom att multiplicera antalet fysiska kärnor med 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Hämtar det totala antalet logiska CPU-kärnor.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-CpuAvx.md)
