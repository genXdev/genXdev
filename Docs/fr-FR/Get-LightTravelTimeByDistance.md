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
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Distance en mètres |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | Vitesse de la lumière en m/s (par défaut : 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Le support dans lequel la lumière se propage *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Unité de sortie pour le temps |

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
