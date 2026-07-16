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
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Начальная скорость в м/с |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Угол запуска в градусах |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Сила тяжести в м/с² (по умолчанию: 9,81) |
| `-As` | String | — | — | 3 | — | Единица измерения времени |

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
