# Get-LightTravelTimeByDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates time for light to travel a distance.

## Description

Uses t = d / c, with c depending on medium.

## Syntax

```powershell
Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [[-SpeedOfLightInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Distance in meters |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | Speed of light in m/s (default: 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | The medium through which light travels *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Output unit for time |

## Examples

### Example 1

```powershell
Get-LightTravelTimeByDistance -DistanceInMeters 149597870700 -Medium "water" -As "minutes"
```

Calculates the time for light to travel the distance to the sun through water, in minutes.

### Example 2

```powershell
Get-LightTravelTimeByDistance 300000000 -SpeedOfLightInMetersPerSecond 225000000
```

Calculates time for light to travel 300000000 meters at 225000000 m/s.

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
