# Get-LightTravelTimeByDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula o tempo para a luz percorrer uma distância.

## Description

Usa t = d / c, com c dependendo do meio.

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

## Examples

### Example 1

```powershell
Get-LightTravelTimeByDistance -DistanceInMeters 149597870700 -Medium "water" -As "minutes"
```

Calcula o tempo para a luz viajar a distância até o sol através da água, em minutos.

### Example 2

```powershell
Get-LightTravelTimeByDistance 300000000 -SpeedOfLightInMetersPerSecond 225000000
```

Calcula o tempo para a luz percorrer 300000000 metros a 225000000 m/s.

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
