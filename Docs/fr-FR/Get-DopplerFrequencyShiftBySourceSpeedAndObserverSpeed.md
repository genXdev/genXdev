# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
