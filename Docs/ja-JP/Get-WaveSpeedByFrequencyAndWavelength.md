# Get-WaveSpeedByFrequencyAndWavelength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 波の速度を計算します。

## Description

波の基本式 v = f λ を利用する。

## Syntax

```powershell
Get-WaveSpeedByFrequencyAndWavelength [-FrequencyInHertz] <double> [-WavelengthInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FrequencyInHertz` | Double | ✅ | — | 0 | `0` | 周波数 (Hz) |
| `-WavelengthInMeters` | Double | ✅ | — | 1 | `0` | 波長（メートル） |
| `-As` | String | — | — | 2 | — | 速度の出力単位 |

## Examples

### Example 1

```powershell
Get-WaveSpeedByFrequencyAndWavelength -FrequencyInHertz 440 -WavelengthInMeters 0.78 -As "km/h"
```

v = f * λ を用いて波の速度を計算します。

### Example 2

```powershell
Get-WaveSpeedByFrequencyAndWavelength 1000 0.34
```

位置パラメータを使用して波動速度を計算します。

## Related Links

- [Get-WaveSpeedByFrequencyAndWavelength on GitHub](https://github.com/genXdev/genXdev)
