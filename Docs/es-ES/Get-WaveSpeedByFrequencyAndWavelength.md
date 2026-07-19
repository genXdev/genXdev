# Get-WaveSpeedByFrequencyAndWavelength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la velocidad de la onda.

## Description

Usa v = f λ.

## Syntax

```powershell
Get-WaveSpeedByFrequencyAndWavelength [-FrequencyInHertz] <double> [-WavelengthInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FrequencyInHertz` | Double | ✅ | — | 0 | `0` | Frecuencia en Hz |
| `-WavelengthInMeters` | Double | ✅ | — | 1 | `0` | Longitud de onda en metros |
| `-As` | String | — | — | 2 | — | {
  "type": "object",
  "properties": {
    "speed_units": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "name": {
            "type": "string"
          },
          "abbreviation": {
            "type": "string"
          },
          "conversion_to_mps": {
            "type": "number"
          }
        },
        "required": ["name", "abbreviation", "conversion_to_mps"]
      }
    }
  },
  "required": ["speed_units"]
} |

## Examples

### Example 1

```powershell
Get-WaveSpeedByFrequencyAndWavelength -FrequencyInHertz 440 -WavelengthInMeters 0.78 -As "km/h"
```

Calcula la velocidad de la onda usando v = f * λ.

### Example 2

```powershell
Get-WaveSpeedByFrequencyAndWavelength 1000 0.34
```

Calcula la velocidad de onda con parámetros posicionales.

## Related Links

- [Get-WaveSpeedByFrequencyAndWavelength on GitHub](https://github.com/genXdev/genXdev)
