# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Oblicza i zwraca całkowitą liczbę logicznych rdzeni procesora w systemie.

## Description

Wykonuje zapytanie do sprzętu systemowego za pomocą Instrumentacji Zarządzania Windows (WMI) w celu określenia całkowitej liczby logicznych rdzeni procesora. Funkcja uwzględnia hiperwątkowość poprzez pomnożenie liczby fizycznych rdzeni przez 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Pobiera całkowitą liczbę logicznych rdzeni procesora.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-CpuAvx.md)
