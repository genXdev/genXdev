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
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Afstand in meters |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | Snelheid van het licht in m/s (standaard: 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Het medium waardoor licht reist *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Output eenheid voor tijd |

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
