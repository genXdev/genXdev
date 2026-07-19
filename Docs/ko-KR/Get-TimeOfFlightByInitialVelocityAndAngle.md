# Get-TimeOfFlightByInitialVelocityAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 발사체의 비행 시간을 계산합니다.

## Description

이상적인 운동에 대해 T = (2 v sinθ) / g를 사용합니다.

## Syntax

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle [-InitialVelocityInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 초기 속도 (m/s) |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | 발사 각도 (도) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 중력 (m/s²) (기본값: 9.81) |
| `-As` | String | — | — | 3 | — | 시간 출력 단위 |

## Examples

### Example 1

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle -InitialVelocityInMetersPerSecond 20 -AngleInDegrees 45 -As "minutes"
```

20m/s의 속도로 45도 각도로 발사된 발사체의 비행 시간을 계산하여 분 단위로 출력합니다.

### Example 2

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle 30 30
```

30 m/s의 속도로 30도 각도로 발사된 발사체의 비행 시간을 계산합니다.

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
