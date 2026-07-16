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
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 初始速度（米/秒） |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | 发射角度（度） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 重力，单位 m/s²（默认值：9.81） |
| `-As` | String | — | — | 3 | — | 量程输出单元 |

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
