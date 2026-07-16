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
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 초기 속도 (m/s) |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | 발사 각도 (도) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 중력 (m/s²) (기본값: 9.81) |
| `-As` | String | — | — | 3 | — | 범위 출력 단위 |

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
