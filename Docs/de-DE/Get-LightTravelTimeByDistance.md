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
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Entfernung in Metern |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | Lichtgeschwindigkeit in m/s (Standard: 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Das Medium, durch das Licht reist *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Ausgabeeinheit für Zeit |

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
