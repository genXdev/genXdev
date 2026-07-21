# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt het totale aantal beeldschermen op dat op het systeem is aangesloten.

## Description

* Maakt gebruik van de Windows Presentation Foundation (WPF) Screen-helperklasse om
  nauwkeurig het aantal fysieke beeldschermen te bepalen dat momenteel
  is aangesloten op het systeem.
* Dit omvat zowel actieve als gedetecteerde maar uitgeschakelde monitors.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Geeft het totale aantal aangesloten beeldschermen terug (bijv. 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Geeft het aantal monitoren weer met uitgebreide uitvoer die het detectieproces toont.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Test-CpuAvx.md)
