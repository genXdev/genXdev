# Get-MonitorCount

> **Module:** GenXdev.Hardware | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Получает общее количество подключённых к системе дисплеев (мониторов).

## Description

* Использует вспомогательный класс Screen из Windows Presentation Foundation (WPF) для точного определения количества физических мониторов, в данный момент подключенных к системе.
* Это включает как активные, так и обнаруженные, но отключенные мониторы.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Возвращает общее количество подключенных мониторов (например, 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Возвращает количество мониторов с подробным выводом, показывающим процесс обнаружения.

## Related Links

- [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AudioDeviceNames.md)
- [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-CpuCore.md)
- [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-HasCapableGpu.md)
- [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-NumberOfCpuCores.md)
- [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Test-CpuAvx.md)
