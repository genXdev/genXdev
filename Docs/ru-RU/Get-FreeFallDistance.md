# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет расстояние падения при свободном падении за заданный промежуток времени.

## Description

Вычисляет расстояние падения при свободном падении с использованием численного метода, учитывающего сопротивление воздуха и предельную скорость.

## Syntax

```powershell
Get-FreeFallDistance [-DurationInSeconds] <double> [[-TerminalVelocityInMetersPerSecond] <double>] [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | Время падения в секундах |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | Конечная скорость в метрах в секунду (по умолчанию: 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Ускорение свободного падения в м/с² (по умолчанию: 9,81) |
| `-As` | String | — | — | 3 | — | Единица измерения выходного расстояния |

## Examples

### Example 1

```powershell
Get-FreeFallDistance -DurationInSeconds 10 -TerminalVelocityInMetersPerSecond 53 -As "feet"
```

Вычисляет расстояние падения за 10 секунд в футах.

### Example 2

```powershell
Get-FreeFallDistance 5
```

Вычисляет расстояние за 5 секунд в метрах.

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
