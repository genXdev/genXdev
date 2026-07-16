# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
