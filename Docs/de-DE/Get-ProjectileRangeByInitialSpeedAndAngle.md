# Get-ProjectileRangeByInitialSpeedAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle [-InitialSpeedInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Initial speed in m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Startwinkel in Grad |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Schwerkraft in m/s² (Standard: 9,81) |
| `-As` | String | — | — | 3 | — | Output unit for range |

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
