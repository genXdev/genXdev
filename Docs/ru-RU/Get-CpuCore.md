# Get-CpuCore

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет и возвращает общее количество логических ядер ЦП в системе.

## Description

Запрашивает системное оборудование через Windows Management Instrumentation (WMI) для определения общего количества логических ядер ЦП. Функция учитывает гиперпоточность, умножая количество физических ядер на 2.

## Syntax

```powershell
Get-CpuCore [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-CpuCore
```

Получает общее количество логических ядер ЦП.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AudioDeviceNames.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-HasCapableGpu.md)
- [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-MonitorCount.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-CpuAvx.md)
