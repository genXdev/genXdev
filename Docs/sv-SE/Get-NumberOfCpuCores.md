# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Beräknar och returnerar det totala antalet logiska CPU-kärnor i systemet.

## Description

Frågar systemets hårdvara via Windows Management Instrumentation (WMI) för att fastställa det totala antalet logiska CPU-kärnor. Cmdleten tar hänsyn till hypertrådning genom att multiplicera antalet fysiska kärnor med 2. Denna information är användbar för att optimera parallella bearbetningsuppgifter och förstå systemets kapacitet.

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

Hämtar det totala antalet logiska CPU-kärnor som är tillgängliga på systemet.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-CpuAvx.md)
