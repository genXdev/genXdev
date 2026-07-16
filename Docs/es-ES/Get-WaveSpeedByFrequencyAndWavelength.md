# Get-WaveSpeedByFrequencyAndWavelength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-WaveSpeedByFrequencyAndWavelength on GitHub](https://github.com/genXdev/genXdev)
