# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет время, необходимое объекту для падения с заданной высоты при свободном падении.

## Description

Вычисляет длительность времени, необходимую для падения объекта с заданной высоты, используя численный метод, учитывающий сопротивление воздуха и предельную скорость. Расчет использует малые временные шаги для точного моделирования физики падения объектов с реалистичными ограничениями предельной скорости.

## Syntax

```powershell
Get-FreeFallTime [-HeightInMeters] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Высота падения в метрах |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | Конечная скорость в метрах в секунду (по умолчанию: 53 м/с для человека) |
| `-As` | String | — | — | 2 | — | Единица измерения времени вывода |

## Examples

### Example 1

```powershell
Get-FreeFallTime -HeightInMeters 100 -TerminalVelocityInMs 53
```

Вычисляет время, необходимое для падения на 100 метров, при стандартной конечной скорости человека.

### Example 2

```powershell
Get-FreeFallTime 50
```

Вычисляет время падения с 50 метров, используя позиционный параметр и стандартную конечную скорость.

### Example 3

```powershell
Get-FreeFallTime -HeightInMeters 100 -As "minutes"
```

Вычисляет время, необходимое для падения с высоты 100 метров, и возвращает результат в минутах.

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
