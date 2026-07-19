# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> ドップラー効果による周波数を計算します。

## Description

f' = f * (v + vo) / (v - vs) を使用します。速度は互いに正の方向です。

## Syntax

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | 元の周波数（Hz） |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | 観測者に向かう方向の音源速度（m/s） |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | 観測者の速度（m/s、正の値は音源に向かう方向） |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | 音速（m/s、デフォルト：343） *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | メディア *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Output unit for frequency |

## Examples

### Example 1

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed -OriginalFrequencyInHertz 440 -SourceSpeedInMetersPerSecond 10 -ObserverSpeedInMetersPerSecond 5 -Medium "water" -As "kilohertz"
```

音速を水中の約1500 m/sと仮定して、ドップラー効果の式 f' = f * (v + vo) / (v - vs) を用いる。ここで f = 440 Hz、v = 1500 m/s、vo = 5 m/s、vs = 10 m/s である。f' = 440 * (1500 + 5) / (1500 - 10) = 440 * 1505 / 1490 ≈ 444.3 Hz = 0.4443 kHz。

### Example 2

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed 440 10 0 -SpeedOfSoundInMetersPerSecond 1480
```

音源が10 m/sで移動し、観測者が静止、音速が1480 m/sの場合の440 Hzの音のドップラー偏移周波数を計算します。

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
