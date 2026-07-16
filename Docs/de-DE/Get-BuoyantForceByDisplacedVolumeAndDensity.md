# Get-BuoyantForceByDisplacedVolumeAndDensity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-BuoyantForceByDisplacedVolumeAndDensity [-DisplacedVolumeInCubicMeters] <double> [-FluidDensityInKilogramsPerCubicMeter] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DisplacedVolumeInCubicMeters` | Double | ✅ | — | 0 | `0` | Verdrängtes Volumen in m³ |
| `-FluidDensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | Fluiddichte in kg/m³ |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Schwerkraft in m/s² (Standard: 9,81) |
| `-As` | String | — | — | 3 | — | Newton (N) |

## Related Links

- [Get-BuoyantForceByDisplacedVolumeAndDensity on GitHub](https://github.com/genXdev/genXdev)
