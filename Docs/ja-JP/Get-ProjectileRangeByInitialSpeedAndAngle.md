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
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 初期速度（m/s） |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | 発射角度（度） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 重力加速度（m/s²）：デフォルトは9.81 |
| `-As` | String | — | — | 3 | — | 範囲の出力単位 |

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
