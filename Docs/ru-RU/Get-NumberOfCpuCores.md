# Get-NumberOfCpuCores

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет и возвращает общее количество логических ядер процессора в системе.

## Description

Запрашивает системное оборудование через Windows Management Instrumentation (WMI) для определения общего количества логических ядер процессора. Командлет учитывает гиперпоточность, умножая количество физических ядер на 2. Эта информация полезна для оптимизации задач параллельной обработки и понимания возможностей системы.

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

Возвращает общее количество логических ядер ЦП, доступных в системе.

## Related Links

- [Get-NumberOfCpuCores on GitHub](https://github.com/genXdev/genXdev)
