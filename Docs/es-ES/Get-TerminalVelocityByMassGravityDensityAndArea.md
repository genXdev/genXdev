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
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masa en kg |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Gravedad en m/s² (predeterminado: 9.81) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | Densidad del fluido en kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | Sección transversal en m² |
| `-DragCoefficient` | Double | — | — | 4 | `0` | Coeficiente de arrastre (por defecto: 0.5) |
| `-As` | String | — | — | 5 | — | Unidad de salida para la velocidad |

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
