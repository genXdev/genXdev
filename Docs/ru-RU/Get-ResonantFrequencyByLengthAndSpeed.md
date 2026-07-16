# Get-ResonantFrequencyByLengthAndSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-ResonantFrequencyByLengthAndSpeed on GitHub](https://github.com/genXdev/genXdev)
