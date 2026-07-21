# Get-NumberOfCpuCores

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет и возвращает общее количество логических ядер ЦП в системе.

## Description

Запрашивает системное оборудование через Windows Management Instrumentation (WMI) для определения общего количества логических ядер ЦП. Командлет учитывает гиперпоточность, умножая количество физических ядер на 2. Эта информация полезна для оптимизации задач параллельной обработки и понимания возможностей системы.

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

Возвращает общее количество логических ядер процессора, доступных в системе.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-MonitorCount.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-CpuAvx.md)
