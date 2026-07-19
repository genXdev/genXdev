# Get-WaveSpeedByFrequencyAndWavelength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la vitesse des ondes.

## Description

Utilise v = f λ.

## Syntax

```powershell
Get-WaveSpeedByFrequencyAndWavelength [-FrequencyInHertz] <double> [-WavelengthInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FrequencyInHertz` | Double | ✅ | — | 0 | `0` | Fréquence en Hz |
| `-WavelengthInMeters` | Double | ✅ | — | 1 | `0` | Longueur d'onde en mètres |
| `-As` | String | — | — | 2 | — | Unité de sortie pour la vitesse |

## Examples

### Example 1

```powershell
Get-WaveSpeedByFrequencyAndWavelength -FrequencyInHertz 440 -WavelengthInMeters 0.78 -As "km/h"
```

Calcule la vitesse d'une onde en utilisant v = f * λ.

### Example 2

```powershell
Get-WaveSpeedByFrequencyAndWavelength 1000 0.34
```

Calcule la vitesse des ondes avec des paramètres positionnels.

## Related Links

- [Get-WaveSpeedByFrequencyAndWavelength on GitHub](https://github.com/genXdev/genXdev)
