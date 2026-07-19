# Get-DesktopScalingFactor

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Извлекает коэффициент масштабирования дисплея Windows (настройка DPI) для указанного монитора.

## Description

* Возвращает текущий коэффициент масштабирования Windows для монитора
  в системе.
* Коэффициент масштабирования выражается в процентах, где 100 соответствует
  стандартному масштабированию (96 DPI). Обычные значения: 100, 125, 150 и 200.
* Если монитор не указан, возвращается коэффициент масштабирования для основного
  дисплея.

## Syntax

```powershell
Get-DesktopScalingFactor [[-Monitor] <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | — | — | 0 | `0` | Индекс монитора для проверки (0 = основной монитор) |

## Examples

### Example 1

```powershell
Get-DesktopScalingFactor -Monitor 0
```

Возвращает процент масштабирования для основного монитора.

### Example 2

```powershell
Get-DesktopScalingFactor 1
```

Возвращает процент коэффициента масштабирования для второго монитора, используя позиционный параметр.

## Related Links

- [Get-DesktopScalingFactor on GitHub](https://github.com/genXdev/genXdev)
