# Get-ProjectileRangeByInitialSpeedAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 발사체의 사거리를 계산합니다.

## Description

이상적인 발사체 운동을 위해 공식 R = (v² sin(2θ)) / g 를 사용합니다.

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

## Examples

### Example 1

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle -InitialSpeedInMetersPerSecond 20 -AngleInDegrees 45 -As "feet"
```

투사체 운동 공식을 사용하여 사거리를 계산합니다.

### Example 2

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle 30 30
```

위치 매개변수를 사용하여 범위를 계산합니다.

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
