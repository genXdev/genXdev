# Get-CentripetalAccelerationByVelocityAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 向心加速度を計算します。

## Description

a = v² / r を使用します。

## Syntax

```powershell
Get-CentripetalAccelerationByVelocityAndRadius [-VelocityInMetersPerSecond] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 速度（m/s） |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | メートル単位の半径 |
| `-As` | String | — | — | 2 | — | 加速度の出力単位 |

## Examples

### Example 1

```powershell
Get-CentripetalAccelerationByVelocityAndRadius -VelocityInMetersPerSecond 10 -RadiusInMeters 5 -As "g"
```

速度10 m/s、半径5 mにおける向心加速度を計算し、g単位で出力します。

### Example 2

```powershell
Get-CentripetalAccelerationByVelocityAndRadius 20 10
```

速度20 m/s、半径10 mの位置パラメータを使用して向心加速度を計算します。

## Related Links

- [Get-CentripetalAccelerationByVelocityAndRadius on GitHub](https://github.com/genXdev/genXdev)
