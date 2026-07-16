# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
