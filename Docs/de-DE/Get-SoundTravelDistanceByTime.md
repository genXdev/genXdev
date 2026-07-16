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
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | Die Zeit in Sekunden |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | Schallgeschwindigkeit in m/s (Standard: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Das Medium, durch das sich Schall ausbreitet *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Die Einheit für die Ausgabeentfernung |

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
