# Get-LightTravelTimeByDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule le temps nécessaire à la lumière pour parcourir une distance.

## Description

Utilise t = d / c, avec c dépendant du milieu.

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

## Examples

### Example 1

```powershell
Get-LightTravelTimeByDistance -DistanceInMeters 149597870700 -Medium "water" -As "minutes"
```

Calcule le temps mis par la lumière pour parcourir la distance jusqu'au soleil à travers l'eau, en minutes.

### Example 2

```powershell
Get-LightTravelTimeByDistance 300000000 -SpeedOfLightInMetersPerSecond 225000000
```

Calcule le temps pour que la lumière parcoure 300000000 mètres à 225000000 m/s.

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
