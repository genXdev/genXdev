# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Pobiera całkowitą liczbę monitorów podłączonych do systemu.

## Description

* Używa klasy pomocniczej ekranu Windows Presentation Foundation (WPF), aby
  dokładnie określić liczbę fizycznych monitorów wyświetlaczy aktualnie
  podłączonych do systemu.
* Obejmuje to zarówno monitory aktywne, jak i wykryte, ale wyłączone.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Zwraca całkowitą liczbę podłączonych monitorów (np. 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Zwraca liczbę monitorów z informacjami szczegółowymi pokazującymi proces wykrywania.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Test-CpuAvx.md)
