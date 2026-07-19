# Get-SoundTravelDistanceByTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la distance parcourue par le son en un temps donné.

## Description

Utilise la formule distance = vitesse * temps, avec la vitesse par défaut du son dans l'air.

## Syntax

```powershell
Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | Le temps en secondes |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | Vitesse du son en m/s (par défaut : 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Le milieu à travers lequel le son se propage *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | L'unité pour la distance de sortie |

## Examples

### Example 1

```powershell
Get-SoundTravelDistanceByTime -TimeInSeconds 5 -Medium "water" -As "kilometers"
```

Calcule la distance parcourue par le son dans l'eau en 5 secondes et convertit le résultat en kilomètres.

### Example 2

```powershell
Get-SoundTravelDistanceByTime 10 -SpeedOfSoundInMetersPerSecond 1480
```

Calcule la distance en utilisant une vitesse spécifique du son.

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
