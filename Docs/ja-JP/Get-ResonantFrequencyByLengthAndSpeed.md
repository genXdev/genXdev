# Get-ResonantFrequencyByLengthAndSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 閉管の共鳴周波数を計算します。

## Description

基本周波数には f = v / (4 L) を使用する。

## Syntax

```powershell
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-SpeedInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]

Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LengthInMeters` | Double | ✅ | — | 0 | `0` | メートル単位の長さ |
| `-SpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | 波の速さ (m/s) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | メディア *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Output unit for frequency |

## Examples

### Example 1

```powershell
Get-ResonantFrequencyByLengthAndSpeed -LengthInMeters 0.5 -Medium "air" -As "kilohertz"
```

0.5メートルのパイプの空気中の共振周波数を計算し、出力はキロヘルツ単位。

### Example 2

```powershell
Get-ResonantFrequencyByLengthAndSpeed 1 -SpeedInMetersPerSecond 343
```

波の速度を343 m/sとして、長さ1メートルのパイプの共振周波数を計算します。

## Related Links

- [Get-ResonantFrequencyByLengthAndSpeed on GitHub](https://github.com/genXdev/genXdev)
