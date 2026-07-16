# Get-AtEyeLengthSizeInMM

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-AtEyeLengthSizeInMM on GitHub](https://github.com/genXdev/genXdev)
