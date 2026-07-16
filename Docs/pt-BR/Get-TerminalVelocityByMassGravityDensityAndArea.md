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
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Massa em kg |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Gravidade em m/s² (padrão: 9,81) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | Densidade do fluido em kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | Área da seção transversal em m² |
| `-DragCoefficient` | Double | — | — | 4 | `0` | Coeficiente de arrasto (padrão: 0.5) |
| `-As` | String | — | — | 5 | — | Output unit for velocity: meters per second (m/s) |

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
