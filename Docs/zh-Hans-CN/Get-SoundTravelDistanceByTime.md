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
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | 以秒为单位的时间 |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | 声速（米/秒，默认：343） *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | 声音传播的介质 *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | 输出距离的单位 |

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
