# Get-SoundTravelDistanceByTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates the distance sound travels in a given time.

## Description

Uses the formula distance = speed * time, with default speed of sound in air.

## Syntax

```powershell
Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | The time in seconds |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | Speed of sound in m/s (default: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | The medium through which sound travels *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | The unit for the output distance |

## Examples

### Example 1

```powershell
Get-SoundTravelDistanceByTime -TimeInSeconds 5 -Medium "water" -As "kilometers"
```

Calculates how far sound travels in water over 5 seconds and converts the result to kilometers.

### Example 2

```powershell
Get-SoundTravelDistanceByTime 10 -SpeedOfSoundInMetersPerSecond 1480
```

Calculates the distance using a specific speed of sound.

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
