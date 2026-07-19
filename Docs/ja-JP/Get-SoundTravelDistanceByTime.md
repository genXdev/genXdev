# Get-SoundTravelDistanceByTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 指定された時間に音が伝わる距離を計算します。

## Description

距離 = 速度 × 時間の公式を使用し、デフォルトは空気中の音速。

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

## Examples

### Example 1

```powershell
Get-SoundTravelDistanceByTime -TimeInSeconds 5 -Medium "water" -As "kilometers"
```

水中で音が5秒間に伝わる距離を計算し、結果をキロメートルに変換します。

### Example 2

```powershell
Get-SoundTravelDistanceByTime 10 -SpeedOfSoundInMetersPerSecond 1480
```

特定の音速を用いて距離を計算します。

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
