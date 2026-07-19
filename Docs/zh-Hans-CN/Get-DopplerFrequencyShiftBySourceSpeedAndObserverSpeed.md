# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算多普勒频移后的频率。

## Description

使用 f' = f * (v + vo) / (v - vs)，速度相向为正。

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

## Examples

### Example 1

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed -OriginalFrequencyInHertz 440 -SourceSpeedInMetersPerSecond 10 -ObserverSpeedInMetersPerSecond 5 -Medium "water" -As "kilohertz"
```

First, we need the speed of sound in water. Assume it's 1482 m/s (typical at 20°C). The Doppler formula for both source and observer moving (towards each other) is: f' = f * (v + v_o) / (v - v_s). Here, f = 440 Hz, v = 1482 m/s, v_o = 5 m/s (observer towards source), v_s = 10 m/s (source towards observer). So f' = 440 * (1482+5)/(1482-10) = 440 * (1487/1472) ≈ 440 * 1.01019 ≈ 444.48 Hz. In kilohertz: 0.44448 kHz. Rounding to three decimal places: 0.444 kHz.

### Example 2

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed 440 10 0 -SpeedOfSoundInMetersPerSecond 1480
```

计算声源以10 m/s速度运动、观察者静止、声速为1480 m/s时，440 Hz音调的多普勒频移频率。

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
