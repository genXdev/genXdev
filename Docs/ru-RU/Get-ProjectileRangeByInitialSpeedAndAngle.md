# Get-ProjectileRangeByInitialSpeedAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет дальность полета снаряда.

## Description

Используется формула R = (v² sin(2θ)) / g для идеального движения снаряда.

## Syntax

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle [-InitialSpeedInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Начальная скорость в м/с |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Угол запуска в градусах |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Сила тяжести в м/с² (по умолчанию: 9,81) |
| `-As` | String | — | — | 3 | — | Единица измерения для диапазона |

## Examples

### Example 1

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle -InitialSpeedInMetersPerSecond 20 -AngleInDegrees 45 -As "feet"
```

Вычисляет дальность полета по формуле движения снаряда.

### Example 2

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle 30 30
```

Вычисляет диапазон с позиционными параметрами.

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
