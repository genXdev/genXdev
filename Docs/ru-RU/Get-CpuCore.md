# Get-CpuCore

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет и возвращает общее количество логических ядер процессора в системе.

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

Возвращает общее количество логических ядер ЦП.

## Related Links

- [Get-CpuCore on GitHub](https://github.com/genXdev/genXdev)
