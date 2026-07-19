# Get-ResonantFrequencyByLengthAndSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 닫힌 관의 공명 주파수를 계산합니다.

## Description

기본 주파수에 f = v / (4 L) 공식을 사용합니다.

## Syntax

```powershell
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-SpeedInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]

Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LengthInMeters` | Double | ✅ | — | 0 | `0` | 미터 단위의 길이 |
| `-SpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | 파동 속도 (m/s) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | 중간 *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Output unit for frequency |

## Examples

### Example 1

```powershell
Get-ResonantFrequencyByLengthAndSpeed -LengthInMeters 0.5 -Medium "air" -As "kilohertz"
```

0.5미터 파이프의 공기 중 공진 주파수를 킬로헤르츠 단위로 계산합니다.

### Example 2

```powershell
Get-ResonantFrequencyByLengthAndSpeed 1 -SpeedInMetersPerSecond 343
```

1미터 파이프에 대해 음속 343m/s에서의 공진 주파수를 계산합니다.

## Related Links

- [Get-ResonantFrequencyByLengthAndSpeed on GitHub](https://github.com/genXdev/genXdev)
