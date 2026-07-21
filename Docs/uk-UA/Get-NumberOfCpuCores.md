# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Обчислює та повертає загальну кількість логічних ядер процесора в системі.

## Description

Запитує апаратне забезпечення системи через Windows Management Instrumentation (WMI) для визначення загальної кількості логічних ядер процесора. Командлет враховує гіперпотоковість, множачи кількість фізичних ядер на 2. Ця інформація корисна для оптимізації завдань паралельної обробки та розуміння можливостей системи.

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

Отримує загальну кількість логічних ядер процесора, доступних у системі.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-CpuAvx.md)
