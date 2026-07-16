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
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | Le temps en secondes |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | Vitesse du son en m/s (par défaut : 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Le milieu à travers lequel le son se propage *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | L'unité pour la distance de sortie |

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
