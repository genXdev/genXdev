# Get-TimeOfFlightByInitialVelocityAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 発射体の飛行時間を計算します。

## Description

理想運動には T = (2 v sinθ) / g を使用します。

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

## Examples

### Example 1

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle -InitialVelocityInMetersPerSecond 20 -AngleInDegrees 45 -As "minutes"
```

初速度20 m/s、角度45度で発射された発射体の飛行時間を計算し、分単位で出力する。

### Example 2

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle 30 30
```

初速度30 m/s、角度30度で発射された発射体の飛行時間を計算します。

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
