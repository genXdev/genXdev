# Get-ResonantFrequencyByLengthAndSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a frequência de ressonância para um tubo fechado.

## Description

Usa f = v / (4 L) para a frequência fundamental.

## Syntax

```powershell
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-SpeedInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]

Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LengthInMeters` | Double | ✅ | — | 0 | `0` | Comprimento em metros |
| `-SpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Velocidade da onda em m/s *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | O meio *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Output unit for frequency |

## Examples

### Example 1

```powershell
Get-ResonantFrequencyByLengthAndSpeed -LengthInMeters 0.5 -Medium "air" -As "kilohertz"
```

Calcula a frequência ressonante para um tubo de 0,5 metro no ar, saída em quilohertz.

### Example 2

```powershell
Get-ResonantFrequencyByLengthAndSpeed 1 -SpeedInMetersPerSecond 343
```

Calcula a frequência de ressonância para um tubo de 1 metro com velocidade do som de 343 m/s.

## Related Links

- [Get-ResonantFrequencyByLengthAndSpeed on GitHub](https://github.com/genXdev/genXdev)
