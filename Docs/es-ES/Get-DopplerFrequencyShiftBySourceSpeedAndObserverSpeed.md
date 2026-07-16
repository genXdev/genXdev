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
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | Frecuencia original en Hz |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Velocidad de la fuente en m/s (positiva hacia el observador) |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | Velocidad del observador en m/s (positiva hacia la fuente) |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | Velocidad del sonido en m/s (por defecto: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | El medio *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Unidad de salida para la frecuencia |

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
