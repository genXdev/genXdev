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
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masse en kg |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Gravité en m/s² (par défaut : 9.81) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | Densité du fluide en kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | Section transversale en m² |
| `-DragCoefficient` | Double | — | — | 4 | `0` | Coefficient de traînée (par défaut : 0,5) |
| `-As` | String | — | — | 5 | — | Output unit for velocity |

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
