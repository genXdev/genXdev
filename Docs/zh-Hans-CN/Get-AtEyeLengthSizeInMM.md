# Get-AtEyeLengthSizeInMM

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算一臂距离处物体的视在尺寸（毫米）。

## Description

计算一个物体在成年人平均臂长（约0.7米）处观察时看起来的大小，给定其实际尺寸和距离。该计算使用小角度近似计算角大小。

## Syntax

```powershell
Get-AtEyeLengthSizeInMM [-DistanceInMeters] <double> [-SizeInMeters] <double> [-EyeToArmLengthInMeters <double>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | 到目标的距离，单位为米。 |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | 物体的实际尺寸（以米为单位）。 |
| `-EyeToArmLengthInMeters` | Double | — | — | Named | `0` | 手臂伸直距离，单位为米。默认值为0.7。 |

## Examples

### Example 1

```powershell
Get-AtEyeLengthSizeInMM -DistanceInMeters 10 -SizeInMeters 1
```

Assuming arm's length is about 0.75 m, the apparent size is (0.75/10) * 1 = 0.075 m, or 7.5 cm.

## Related Links

- [Get-AtEyeLengthSizeInMM on GitHub](https://github.com/genXdev/genXdev)
