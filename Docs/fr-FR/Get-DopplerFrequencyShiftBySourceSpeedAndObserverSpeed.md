# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la fréquence décalée par effet Doppler.

## Description

Utilise f' = f * (v + vo) / (v - vs), vitesses positives l'une vers l'autre.

## Syntax

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | Fréquence originale en Hz |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Vitesse de la source en m/s (positive vers l'observateur) |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | Vitesse de l'observateur en m/s (positive en direction de la source) |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | Vitesse du son en m/s (par défaut : 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | Le medium *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Unité de sortie pour la fréquence |

## Examples

### Example 1

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed -OriginalFrequencyInHertz 440 -SourceSpeedInMetersPerSecond 10 -ObserverSpeedInMetersPerSecond 5 -Medium "water" -As "kilohertz"
```

Calcule la fréquence décalée par effet Doppler pour un ton de 440 Hz avec une source se déplaçant à 10 m/s vers l'observateur, un observateur se déplaçant à 5 m/s vers la source, dans un milieu aquatique, affichée en kilohertz.

### Example 2

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed 440 10 0 -SpeedOfSoundInMetersPerSecond 1480
```

Calcule la fréquence décalée par effet Doppler pour un son de 440 Hz avec une source se déplaçant à 10 m/s, un observateur immobile, et une vitesse du son de 1480 m/s.

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
