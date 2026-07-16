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
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | Frequência original em Hz |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Velocidade da fonte em m/s (positiva em direção ao observador) |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | Velocidade do observador em m/s (positiva em direção à fonte) |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | Velocidade do som em m/s (padrão: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | O meio *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Output unit for frequency |

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
