# Get-TerminalVelocityByMassGravityDensityAndArea

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea [-MassInKilograms] <double> [[-GravityInMetersPerSecondSquared] <double>] [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [[-DragCoefficient] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Mass in kg |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Gravity in m/s² (default: 9.81) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | Fluid density in kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | Cross-sectional area in m² |
| `-DragCoefficient` | Double | — | — | 4 | `0` | Drag coefficient (default: 0.5) |
| `-As` | String | — | — | 5 | — | Output unit for velocity |

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
