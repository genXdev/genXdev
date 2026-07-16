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
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | 초 단위의 시간 |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | 음속 (m/s) (기본값: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | The medium through which sound travels *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | 출력 거리의 단위 |

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
