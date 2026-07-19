# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates Doppler shifted frequency.

## Description

Uses f' = f * (v + vo) / (v - vs), speeds positive towards each other.

## Syntax

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | Original frequency in Hz |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Source speed in m/s (positive towards observer) |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | Observer speed in m/s (positive towards source) |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | Speed of sound in m/s (default: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | The medium *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Output unit for frequency |

## Examples

### Example 1

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed -OriginalFrequencyInHertz 440 -SourceSpeedInMetersPerSecond 10 -ObserverSpeedInMetersPerSecond 5 -Medium "water" -As "kilohertz"
```

Calculates the Doppler shifted frequency for a 440 Hz tone with source moving at 10 m/s towards observer, observer moving at 5 m/s towards source, in water medium, output in kilohertz.

### Example 2

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed 440 10 0 -SpeedOfSoundInMetersPerSecond 1480
```

Calculates the Doppler shifted frequency for a 440 Hz tone with source moving at 10 m/s, observer stationary, speed of sound 1480 m/s.

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
