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
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Distância em metros |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | Velocidade da luz em m/s (padrão: 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | O meio pelo qual a luz viaja *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Unidade de saída para tempo |

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
