# Get-MonitorCount

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Возвращает общее количество подключенных к системе дисплеев.

## Description

*  Использует вспомогательный класс Screen из Windows Presentation Foundation (WPF) для
  точного определения количества физических дисплеев, в настоящее время
  подключенных к системе.
* Сюда входят как активные, так и обнаруженные, но отключенные мониторы.

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

Возвращает количество мониторов с подробным выводом процесса обнаружения.

## Related Links

- [Get-MonitorCount on GitHub](https://github.com/genXdev/genXdev)
