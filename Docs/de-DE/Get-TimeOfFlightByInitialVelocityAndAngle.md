# Get-TimeOfFlightByInitialVelocityAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle [-InitialVelocityInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Anfangsgeschwindigkeit in m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Startwinkel in Grad |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Schwerkraft in m/s² (Standard: 9,81) |
| `-As` | String | — | — | 3 | — | Ausgabeeinheit für Zeit |

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
