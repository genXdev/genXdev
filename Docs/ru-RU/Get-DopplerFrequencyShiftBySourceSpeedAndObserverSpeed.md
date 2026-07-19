# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет доплеровски сдвинутую частоту.

## Description

Использует f' = f * (v + vo) / (v - vs), скорости положительны при движении навстречу.

## Syntax

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | Исходная частота в Гц |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Скорость источника в м/с (положительное направление к наблюдателю) |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | Скорость наблюдателя в м/с (положительная — в сторону источника) |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | Скорость звука в м/с (по умолчанию: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | Среда *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Output unit for frequency |

## Examples

### Example 1

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed -OriginalFrequencyInHertz 440 -SourceSpeedInMetersPerSecond 10 -ObserverSpeedInMetersPerSecond 5 -Medium "water" -As "kilohertz"
```

Вычисляет доплеровскую сдвинутую частоту для тона 440 Гц при движении источника к наблюдателю со скоростью 10 м/с, наблюдателя к источнику со скоростью 5 м/с, в водной среде, вывод в килогерцах.

### Example 2

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed 440 10 0 -SpeedOfSoundInMetersPerSecond 1480
```

Вычисляет доплеровский сдвиг частоты для тона 440 Гц при движении источника со скоростью 10 м/с, неподвижном наблюдателе и скорости звука 1480 м/с.

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
