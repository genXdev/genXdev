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
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 初速度（m/s） |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | 発射角度（度） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 重力加速度（m/s²）：デフォルトは9.81 |
| `-As` | String | — | — | 3 | — | 時間の出力単位 |

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
