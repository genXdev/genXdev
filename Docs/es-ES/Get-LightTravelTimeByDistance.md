# Get-LightTravelTimeByDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula el tiempo que tarda la luz en recorrer una distancia.

## Description

Usa t = d / c, con c dependiendo del medio.

## Syntax

```powershell
Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [[-SpeedOfLightInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Distancia en metros |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | Velocidad de la luz en m/s (por defecto: 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | The medium through which light travels *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Unidad de salida para el tiempo |

## Examples

### Example 1

```powershell
Get-LightTravelTimeByDistance -DistanceInMeters 149597870700 -Medium "water" -As "minutes"
```

Calcula el tiempo que tarda la luz en viajar la distancia al sol a través del agua, en minutos.

### Example 2

```powershell
Get-LightTravelTimeByDistance 300000000 -SpeedOfLightInMetersPerSecond 225000000
```

Calcula el tiempo que tarda la luz en viajar 300000000 metros a 225000000 m/s.

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
