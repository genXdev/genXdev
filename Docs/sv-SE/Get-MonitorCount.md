# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Hämtar det totala antalet bildskärmar som är anslutna till systemet.

## Description

Använder Windows Presentation Foundation-klassen (WPF) Screen för att korrekt bestämma antalet fysiska bildskärmsmonitorer som för närvarande är anslutna till systemet. Detta inkluderar både aktiva och upptäckta men inaktiverade monitorer.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Returnerar det totala antalet anslutna bildskärmar (t.ex. 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Returnerar antalet bildskärmar med utförlig utdata som visar identifieringsprocessen.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-CpuAvx.md)
