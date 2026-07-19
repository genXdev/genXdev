# Get-ProjectileRangeByInitialSpeedAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates the range of a projectile.

## Description

Uses the formula R = (v² sin(2θ)) / g for ideal projectile motion.

## Syntax

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle [-InitialSpeedInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Initial speed in m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Launch angle in degrees |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravity in m/s² (default: 9.81) |
| `-As` | String | — | — | 3 | — | Output unit for range |

## Examples

### Example 1

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle -InitialSpeedInMetersPerSecond 20 -AngleInDegrees 45 -As "feet"
```

Calculates the range using the projectile motion formula.

### Example 2

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle 30 30
```

Calculates the range with positional parameters.

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
