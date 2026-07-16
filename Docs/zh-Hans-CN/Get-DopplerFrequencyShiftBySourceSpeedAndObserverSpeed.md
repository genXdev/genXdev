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
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | 原始频率（赫兹） |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | 声源速度（米/秒，朝向观察者为正） |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | 观测者速度（米/秒，正值表示朝向声源） |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | 声速（米/秒，默认：343） *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | 媒介 *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | 赫兹 (Hz) |

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
