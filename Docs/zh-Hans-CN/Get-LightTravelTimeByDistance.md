# Get-LightTravelTimeByDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算光传播一段距离所需的时间。

## Description

使用 t = d / c，其中 c 取决于介质。

## Syntax

```powershell
Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [[-SpeedOfLightInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | 距离（米） |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | 光速，单位为米/秒（默认：299792458） *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | 光传播的介质 *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | 时间的输出单位 |

## Examples

### Example 1

```powershell
Get-LightTravelTimeByDistance -DistanceInMeters 149597870700 -Medium "water" -As "minutes"
```

计算光通过水到达太阳所需的时间，以分钟为单位。

### Example 2

```powershell
Get-LightTravelTimeByDistance 300000000 -SpeedOfLightInMetersPerSecond 225000000
```

计算光以225000000米/秒的速度传播300000000米所需的时间。

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
