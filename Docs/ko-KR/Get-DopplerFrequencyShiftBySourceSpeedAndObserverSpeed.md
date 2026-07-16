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
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | 원래 주파수 (Hz) |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | 관찰자를 향하는 방향의 소스 속도 (m/s) |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | 관찰자 속도 (m/s 단위, 양수는 음원 방향) |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | 음속 (m/s) (기본값: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | 중간 *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Output unit for frequency |

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
