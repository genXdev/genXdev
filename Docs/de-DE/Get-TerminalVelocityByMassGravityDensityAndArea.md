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
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masse in kg |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Schwerkraft in m/s² (Standard: 9,81) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | Fluiddichte in kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | Querschnittsfläche in m² |
| `-DragCoefficient` | Double | — | — | 4 | `0` | Strömungswiderstandskoeffizient (Standard: 0,5) |
| `-As` | String | — | — | 5 | — | m/s |

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
