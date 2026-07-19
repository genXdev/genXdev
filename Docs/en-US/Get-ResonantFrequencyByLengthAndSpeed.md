# Get-ResonantFrequencyByLengthAndSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates resonant frequency for a closed pipe.

## Description

Uses f = v / (4 L) for fundamental frequency.

## Syntax

```powershell
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-SpeedInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]

Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LengthInMeters` | Double | ✅ | — | 0 | `0` | Length in meters |
| `-SpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Wave speed in m/s *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | The medium *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Output unit for frequency |

## Examples

### Example 1

```powershell
Get-ResonantFrequencyByLengthAndSpeed -LengthInMeters 0.5 -Medium "air" -As "kilohertz"
```

Calculates the resonant frequency for a 0.5 meter pipe in air, output in kilohertz.

### Example 2

```powershell
Get-ResonantFrequencyByLengthAndSpeed 1 -SpeedInMetersPerSecond 343
```

Calculates the resonant frequency for a 1 meter pipe with wave speed 343 m/s.

## Related Links

- [Get-ResonantFrequencyByLengthAndSpeed on GitHub](https://github.com/genXdev/genXdev)
