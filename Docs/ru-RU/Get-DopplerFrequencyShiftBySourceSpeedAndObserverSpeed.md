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
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | Исходная частота в Гц |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Скорость источника в м/с (положительное направление к наблюдателю) |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | Скорость наблюдателя в м/с (положительная — в сторону источника) |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | Скорость звука в м/с (по умолчанию: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | Среда *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Output unit for frequency |

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
