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
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | Ursprüngliche Frequenz in Hz |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Quellengeschwindigkeit in m/s (positiv zum Beobachter hin) |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | Beobachtergeschwindigkeit in m/s (positiv zur Quelle hin) |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | Schallgeschwindigkeit in m/s (Standard: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | Das Medium *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Hz |

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
