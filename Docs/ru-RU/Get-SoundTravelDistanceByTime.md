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
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | Время в секундах |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | Скорость звука в м/с (по умолчанию: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | The medium through which sound travels *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Единица измерения выходного расстояния |

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
