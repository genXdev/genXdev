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
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | 秒単位の時間 |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | 音速（m/s、デフォルト：343） *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | 音が伝わる媒体 *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | 出力距離の単位 |

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
