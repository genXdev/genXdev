# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Oblicza i zwraca całkowitą liczbę logicznych rdzeni procesora w systemie.

## Description

Wykonuje zapytanie do sprzętu systemowego za pomocą Instrumentacji Zarządzania Windows (WMI) w celu określenia całkowitej liczby logicznych rdzeni procesora. Polecenie uwzględnia hiperwątkowość, mnożąc liczbę fizycznych rdzeni przez 2. Ta informacja jest przydatna do optymalizacji zadań przetwarzania równoległego i zrozumienia możliwości systemu.

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

Pobiera całkowitą liczbę logicznych rdzeni procesora dostępnych w systemie.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-CpuAvx.md)
