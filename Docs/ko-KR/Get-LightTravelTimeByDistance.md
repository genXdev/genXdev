# Get-LightTravelTimeByDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
