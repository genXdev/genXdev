# Get-ResonantFrequencyByLengthAndSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет резонансную частоту для закрытой трубы.

## Description

Использует f = v / (4 L) для основной частоты.

## Syntax

```powershell
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-SpeedInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]

Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LengthInMeters` | Double | ✅ | — | 0 | `0` | Длина в метрах |
| `-SpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Скорость волны в м/с *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Среда *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Output unit for frequency |

## Examples

### Example 1

```powershell
Get-ResonantFrequencyByLengthAndSpeed -LengthInMeters 0.5 -Medium "air" -As "kilohertz"
```

Рассчитывает резонансную частоту для трубы длиной 0.5 метра в воздухе, результат в килогерцах.

### Example 2

```powershell
Get-ResonantFrequencyByLengthAndSpeed 1 -SpeedInMetersPerSecond 343
```

Рассчитывает резонансную частоту для трубы длиной 1 метр со скоростью звука 343 м/с.

## Related Links

- [Get-ResonantFrequencyByLengthAndSpeed on GitHub](https://github.com/genXdev/genXdev)
