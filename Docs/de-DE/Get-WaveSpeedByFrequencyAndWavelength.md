# Get-WaveSpeedByFrequencyAndWavelength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Wellengeschwindigkeit.

## Description

Verwendet v = f λ.

## Syntax

```powershell
Get-WaveSpeedByFrequencyAndWavelength [-FrequencyInHertz] <double> [-WavelengthInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FrequencyInHertz` | Double | ✅ | — | 0 | `0` | Frequenz in Hz |
| `-WavelengthInMeters` | Double | ✅ | — | 1 | `0` | Wellenlänge in Metern |
| `-As` | String | — | — | 2 | — | meters per second |

## Examples

### Example 1

```powershell
Get-WaveSpeedByFrequencyAndWavelength -FrequencyInHertz 440 -WavelengthInMeters 0.78 -As "km/h"
```

Berechnet die Wellengeschwindigkeit mit v = f * λ.

### Example 2

```powershell
Get-WaveSpeedByFrequencyAndWavelength 1000 0.34
```

Berechnet die Wellengeschwindigkeit mit Positionsparametern.

## Related Links

- [Get-WaveSpeedByFrequencyAndWavelength on GitHub](https://github.com/genXdev/genXdev)
