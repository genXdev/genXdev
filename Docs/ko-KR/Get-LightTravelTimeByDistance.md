# Get-LightTravelTimeByDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 빛이 거리를 이동하는 데 걸리는 시간을 계산합니다.

## Description

t = d / c를 사용하며, c는 매질에 따라 달라집니다.

## Syntax

```powershell
Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [[-SpeedOfLightInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | 미터 단위 거리 |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | Speed of light in m/s (default: 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | 빛이 통과하는 매질 *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | 시간 출력 단위 |

## Examples

### Example 1

```powershell
Get-LightTravelTimeByDistance -DistanceInMeters 149597870700 -Medium "water" -As "minutes"
```

물 속에서 태양까지의 거리를 빛이 이동하는 데 걸리는 시간을 분 단위로 계산합니다.

### Example 2

```powershell
Get-LightTravelTimeByDistance 300000000 -SpeedOfLightInMetersPerSecond 225000000
```

225000000 m/s의 속도로 빛이 300000000미터를 이동하는 데 걸리는 시간을 계산합니다.

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
