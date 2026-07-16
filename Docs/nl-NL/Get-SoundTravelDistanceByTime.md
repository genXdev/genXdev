# Get-SoundTravelDistanceByTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | De tijd in seconden |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | Geluidssnelheid in m/s (standaard: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Het medium waardoor geluid zich voortplant *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | De eenheid voor de uitvoerafstand |

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
