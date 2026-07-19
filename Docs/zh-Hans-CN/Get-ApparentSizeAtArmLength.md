# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算手臂距离处物体的视在大小。

## Description

使用小角度近似计算视在大小。

## Syntax

```powershell
Get-ApparentSizeAtArmLength [-DistanceInMeters] <double> [-SizeInMeters] <double> [[-ArmLengthInMeters] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | 到物体的距离（米） |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | 物体实际尺寸（以米为单位） |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | 臂长（单位：米，默认值：0.7） |
| `-As` | String | — | — | 3 | — | 输出大小的单位 |

## Examples

### Example 1

```powershell
Get-ApparentSizeAtArmLength -DistanceInMeters 10 -SizeInMeters 1 -As "centimeters"
```

计算1米物体在10米距离处的视角大小。

### Example 2

```powershell
Get-ApparentSizeAtArmLength 10 1
```

使用位置参数计算视在大小。

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
