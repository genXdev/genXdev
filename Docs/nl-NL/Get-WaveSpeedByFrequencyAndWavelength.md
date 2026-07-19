# Get-WaveSpeedByFrequencyAndWavelength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de golfsnelheid.

## Description

Gebruik v = f λ.

## Syntax

```powershell
Get-WaveSpeedByFrequencyAndWavelength [-FrequencyInHertz] <double> [-WavelengthInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FrequencyInHertz` | Double | ✅ | — | 0 | `0` | Frequentie in Hz |
| `-WavelengthInMeters` | Double | ✅ | — | 1 | `0` | Golflengte in meters |
| `-As` | String | — | — | 2 | — | kilometer per hour |

## Examples

### Example 1

```powershell
Get-WaveSpeedByFrequencyAndWavelength -FrequencyInHertz 440 -WavelengthInMeters 0.78 -As "km/h"
```

Berekent de golfsnelheid met v = f * λ.

### Example 2

```powershell
Get-WaveSpeedByFrequencyAndWavelength 1000 0.34
```

Berekent golfsnelheid met positieparameters.

## Related Links

- [Get-WaveSpeedByFrequencyAndWavelength on GitHub](https://github.com/genXdev/genXdev)
