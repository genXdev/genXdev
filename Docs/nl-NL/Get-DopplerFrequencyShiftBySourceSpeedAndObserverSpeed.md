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
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | Oorspronkelijke frequentie in Hz |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Bron snelheid in m/s (positief richting waarnemer) |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | Waarnemerssnelheid in m/s (positief richting bron) |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | Geluidssnelheid in m/s (standaard: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | Het medium *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Eenheid voor frequentie |

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
