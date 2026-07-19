# Get-ResonantFrequencyByLengthAndSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de resonantiefrequentie voor een gesloten pijp.

## Description

Gebruikt f = v / (4 L) voor de grondfrequentie.

## Syntax

```powershell
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-SpeedInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]

Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LengthInMeters` | Double | ✅ | — | 0 | `0` | Lengte in meters |
| `-SpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Golfsnelheid in m/s *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Het medium *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Eenheid voor frequentie |

## Examples

### Example 1

```powershell
Get-ResonantFrequencyByLengthAndSpeed -LengthInMeters 0.5 -Medium "air" -As "kilohertz"
```

Berekent de resonantiefrequentie voor een pijp van 0,5 meter in lucht, uitvoer in kilohertz.

### Example 2

```powershell
Get-ResonantFrequencyByLengthAndSpeed 1 -SpeedInMetersPerSecond 343
```

Berekent de resonantiefrequentie voor een 1 meter lange buis met een geluidssnelheid van 343 m/s.

## Related Links

- [Get-ResonantFrequencyByLengthAndSpeed on GitHub](https://github.com/genXdev/genXdev)
