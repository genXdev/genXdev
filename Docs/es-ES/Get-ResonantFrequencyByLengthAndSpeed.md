# Get-ResonantFrequencyByLengthAndSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la frecuencia de resonancia para un tubo cerrado.

## Description

Utiliza f = v / (4 L) para la frecuencia fundamental.

## Syntax

```powershell
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-SpeedInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]

Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LengthInMeters` | Double | ✅ | — | 0 | `0` | Longitud en metros |
| `-SpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Velocidad de onda en m/s *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | El medio *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Unidad de salida para la frecuencia |

## Examples

### Example 1

```powershell
Get-ResonantFrequencyByLengthAndSpeed -LengthInMeters 0.5 -Medium "air" -As "kilohertz"
```

Calcula la frecuencia de resonancia para un tubo de 0.5 metros en el aire, salida en kilohercios.

### Example 2

```powershell
Get-ResonantFrequencyByLengthAndSpeed 1 -SpeedInMetersPerSecond 343
```

Calcula la frecuencia de resonancia para un tubo de 1 metro con una velocidad del sonido de 343 m/s.

## Related Links

- [Get-ResonantFrequencyByLengthAndSpeed on GitHub](https://github.com/genXdev/genXdev)
