# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de Doppler-verschoven frequentie.

## Description

Gebruik f' = f * (v + vo) / (v - vs), snelheden positief naar elkaar toe.

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

## Examples

### Example 1

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed -OriginalFrequencyInHertz 440 -SourceSpeedInMetersPerSecond 10 -ObserverSpeedInMetersPerSecond 5 -Medium "water" -As "kilohertz"
```

Berekent de Dopplerverschoven frequentie voor een 440 Hz toon met een bron die met 10 m/s naar de waarnemer toe beweegt, een waarnemer die met 5 m/s naar de bron toe beweegt, in water als medium, uitvoer in kilohertz.

### Example 2

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed 440 10 0 -SpeedOfSoundInMetersPerSecond 1480
```

Berekent de Dopplerverschoven frequentie voor een toon van 440 Hz met een bron die beweegt met 10 m/s, waarnemer stationair, geluidssnelheid 1480 m/s.

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
