# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die dopplerverschobene Frequenz.

## Description

Verwendet f' = f * (v + vo) / (v - vs), Geschwindigkeiten positiv aufeinander zu.

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

## Examples

### Example 1

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed -OriginalFrequencyInHertz 440 -SourceSpeedInMetersPerSecond 10 -ObserverSpeedInMetersPerSecond 5 -Medium "water" -As "kilohertz"
```

Berechnet die Doppler-verschobene Frequenz für einen 440-Hz-Ton mit einer sich mit 10 m/s auf den Beobachter zubewegenden Quelle, einem sich mit 5 m/s auf die Quelle zubewegenden Beobachter, in einem Wassermedium, Ausgabe in Kilohertz.

### Example 2

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed 440 10 0 -SpeedOfSoundInMetersPerSecond 1480
```

Berechnet die dopplerverschobene Frequenz für einen 440-Hz-Ton, wobei sich die Quelle mit 10 m/s bewegt, der Beobachter stationär ist und die Schallgeschwindigkeit 1480 m/s beträgt.

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
