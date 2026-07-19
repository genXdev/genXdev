# Get-CentripetalAccelerationByVelocityAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算向心加速度。

## Description

使用公式 a = v² / r。

## Syntax

```powershell
Get-CentripetalAccelerationByVelocityAndRadius [-VelocityInMetersPerSecond] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 速度（米/秒） |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | 半径，单位为米 |
| `-As` | String | — | — | 2 | — | m/s² |

## Examples

### Example 1

```powershell
Get-CentripetalAccelerationByVelocityAndRadius -VelocityInMetersPerSecond 10 -RadiusInMeters 5 -As "g"
```

Centripetal acceleration a = v²/r = (10 m/s)² / 5 m = 20 m/s². In g units: 20 / 9.8 ≈ 2.04 g.

### Example 2

```powershell
Get-CentripetalAccelerationByVelocityAndRadius 20 10
```

向心加速度 = 速度² / 半径 = (20 m/s)² / 10 m = 400 m²/s² / 10 m = 40 m/s²

## Related Links

- [Get-CentripetalAccelerationByVelocityAndRadius on GitHub](https://github.com/genXdev/genXdev)
