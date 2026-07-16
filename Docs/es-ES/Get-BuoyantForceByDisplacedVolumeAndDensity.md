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
| `-DisplacedVolumeInCubicMeters` | Double | ✅ | — | 0 | `0` | Volumen desplazado en m³ |
| `-FluidDensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | Densidad del fluido en kg/m³ |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravedad en m/s² (predeterminado: 9.81) |
| `-As` | String | — | — | 3 | — | Newton (N) |

## Related Links

- [Get-BuoyantForceByDisplacedVolumeAndDensity on GitHub](https://github.com/genXdev/genXdev)
