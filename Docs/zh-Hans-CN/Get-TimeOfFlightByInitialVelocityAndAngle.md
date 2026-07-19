# Get-TimeOfFlightByInitialVelocityAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算抛射体飞行时间。

## Description

对于理想运动，使用公式 T = (2 v sinθ) / g。

## Syntax

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle [-InitialVelocityInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 初始速度（米/秒） |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | 发射角度（度） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 重力，单位 m/s²（默认值：9.81） |
| `-As` | String | — | — | 3 | — | 时间的输出单位 |

## Examples

### Example 1

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle -InitialVelocityInMetersPerSecond 20 -AngleInDegrees 45 -As "minutes"
```

The time of flight is approximately 0.048 minutes.

### Example 2

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle 30 30
```

计算以30 m/s速度、30度角发射的抛射体的飞行时间。

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
