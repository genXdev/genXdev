# Get-WaveSpeedByFrequencyAndWavelength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет скорость волны.

## Description

Используется v = f λ.

## Syntax

```powershell
Get-WaveSpeedByFrequencyAndWavelength [-FrequencyInHertz] <double> [-WavelengthInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FrequencyInHertz` | Double | ✅ | — | 0 | `0` | Частота в Гц |
| `-WavelengthInMeters` | Double | ✅ | — | 1 | `0` | Длина волны в метрах |
| `-As` | String | — | — | 2 | — | unit for speed |

## Examples

### Example 1

```powershell
Get-WaveSpeedByFrequencyAndWavelength -FrequencyInHertz 440 -WavelengthInMeters 0.78 -As "km/h"
```

Вычисляет скорость волны по формуле v = f * λ.

### Example 2

```powershell
Get-WaveSpeedByFrequencyAndWavelength 1000 0.34
```

Вычисляет скорость волны с позиционными параметрами.

## Related Links

- [Get-WaveSpeedByFrequencyAndWavelength on GitHub](https://github.com/genXdev/genXdev)
