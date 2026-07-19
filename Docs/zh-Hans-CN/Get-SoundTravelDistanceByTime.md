# Get-SoundTravelDistanceByTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算声音在给定时间内传播的距离。

## Description

使用公式距离 = 速度 * 时间，默认速度为空气中的声速。

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

## Examples

### Example 1

```powershell
Get-SoundTravelDistanceByTime -TimeInSeconds 5 -Medium "water" -As "kilometers"
```

计算声音在水中5秒内传播的距离，并将结果转换为公里。

### Example 2

```powershell
Get-SoundTravelDistanceByTime 10 -SpeedOfSoundInMetersPerSecond 1480
```

使用特定声速计算距离。

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
