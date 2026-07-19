# Get-AtEyeLengthSizeInMM

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates the apparent size in mm of an object at arm's length.

## Description

Computes the size an object would appear to be if viewed at average adult arm's length (approximately 0.7 meters), given its actual size and distance. The calculation uses the small angle approximation for angular size.

## Syntax

```powershell
Get-AtEyeLengthSizeInMM [-DistanceInMeters] <double> [-SizeInMeters] <double> [-EyeToArmLengthInMeters <double>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | The distance to the object in meters. |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | The actual size of the object in meters. |
| `-EyeToArmLengthInMeters` | Double | — | — | Named | `0` | The arm's length distance in meters. Default value is 0.7. |

## Examples

### Example 1

```powershell
Get-AtEyeLengthSizeInMM -DistanceInMeters 10 -SizeInMeters 1
```

Calculates the apparent size at arm's length for an object 1 meter in size at 10 meters distance.

## Related Links

- [Get-AtEyeLengthSizeInMM on GitHub](https://github.com/genXdev/genXdev)
