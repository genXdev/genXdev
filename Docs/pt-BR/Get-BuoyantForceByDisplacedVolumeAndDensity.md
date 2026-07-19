# Get-BuoyantForceByDisplacedVolumeAndDensity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a força de empuxo.

## Description

Utiliza F = ρ V g.

## Syntax

```powershell
Get-BuoyantForceByDisplacedVolumeAndDensity [-DisplacedVolumeInCubicMeters] <double> [-FluidDensityInKilogramsPerCubicMeter] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DisplacedVolumeInCubicMeters` | Double | ✅ | — | 0 | `0` | Volume deslocado em m³ |
| `-FluidDensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | Densidade do fluido em kg/m³ |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravidade em m/s² (padrão: 9,81) |
| `-As` | String | — | — | 3 | — | Unidade de força |

## Related Links

- [Get-BuoyantForceByDisplacedVolumeAndDensity on GitHub](https://github.com/genXdev/genXdev)
