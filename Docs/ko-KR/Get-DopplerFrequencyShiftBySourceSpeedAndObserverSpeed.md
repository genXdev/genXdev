# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 도플러 편이 주파수를 계산합니다.

## Description

f' = f * (v + vo) / (v - vs)를 사용하며, 속도는 서로를 향해 양수입니다.

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

## Examples

### Example 1

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed -OriginalFrequencyInHertz 440 -SourceSpeedInMetersPerSecond 10 -ObserverSpeedInMetersPerSecond 5 -Medium "water" -As "kilohertz"
```

물에서 소스가 관찰자 쪽으로 10 m/s로 움직이고 관찰자가 소스 쪽으로 5 m/s로 움직일 때 440 Hz 음의 도플러 이동 주파수를 계산합니다. 결과는 킬로헤르츠 단위로 출력합니다.

### Example 2

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed 440 10 0 -SpeedOfSoundInMetersPerSecond 1480
```

소스가 10 m/s로 움직이고, 관찰자는 정지해 있으며, 음속이 1480 m/s일 때 440 Hz 음에 대한 도플러 이동 주파수를 계산합니다.

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
