# Get-TimeOfFlightByInitialVelocityAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет время полета снаряда.

## Description

Используется T = (2 v sinθ) / g для идеального движения.

## Syntax

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle [-InitialVelocityInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Начальная скорость в м/с |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Угол запуска в градусах |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Сила тяжести в м/с² (по умолчанию: 9,81) |
| `-As` | String | — | — | 3 | — | Единица измерения времени |

## Examples

### Example 1

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle -InitialVelocityInMetersPerSecond 20 -AngleInDegrees 45 -As "minutes"
```

Вычисляет время полета для снаряда, запущенного со скоростью 20 м/с под углом 45 градусов, выводит в минутах.

### Example 2

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle 30 30
```

Рассчитывает время полета для снаряда, запущенного со скоростью 30 м/с под углом 30 градусов.

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
