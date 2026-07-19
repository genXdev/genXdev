# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет высоту падения при свободном падении за заданный промежуток времени.

## Description

Вычисляет расстояние падения при свободном падении с использованием численного метода, учитывающего сопротивление воздуха и предельную скорость.

## Syntax

```powershell
Get-FreeFallHeight [-DurationInSeconds] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | Время падения в секундах |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | Конечная скорость в метрах в секунду (по умолчанию: 53 м/с для человека) |
| `-As` | String | — | — | 2 | — | Единица измерения выходной высоты |

## Examples

### Example 1

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -TerminalVelocityInMs 53
```

Расчет высоты падения за 10 секунд с учетом стандартной предельной скорости человека.

### Example 2

```powershell
Get-FreeFallHeight 5
```

Вычисляет высоту падения за 5 секунд с использованием позиционного параметра и стандартной конечной скорости.

### Example 3

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -As "feet"
```

Вычисляет высоту падения за 10 секунд и возвращает результат в футах.

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
