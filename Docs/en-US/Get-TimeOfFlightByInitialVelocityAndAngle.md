# Get-TimeOfFlightByInitialVelocityAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates the time of flight for a projectile.

## Description

Uses T = (2 v sinθ) / g for ideal motion.

## Syntax

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle [-InitialVelocityInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Initial velocity in m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Launch angle in degrees |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravity in m/s² (default: 9.81) |
| `-As` | String | — | — | 3 | — | Output unit for time |

## Examples

### Example 1

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle -InitialVelocityInMetersPerSecond 20 -AngleInDegrees 45 -As "minutes"
```

Calculates time of flight for a projectile launched at 20 m/s at 45 degrees, output in minutes.

### Example 2

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle 30 30
```

Calculates time of flight for a projectile launched at 30 m/s at 30 degrees.

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
