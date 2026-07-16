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
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | メートル単位の距離 |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | 真空中の光速 (m/s) (デフォルト: 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | 光が伝わる媒体 *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | 時間の出力単位 |

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
