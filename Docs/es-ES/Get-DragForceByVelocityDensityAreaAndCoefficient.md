# Get-DragForceByVelocityDensityAreaAndCoefficient

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient [-VelocityInMetersPerSecond] <double> [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [-Coefficient] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Velocidad en m/s |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | Densidad del fluido en kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 2 | `0` | Sección transversal en m² |
| `-Coefficient` | Double | ✅ | — | 3 | `0` | coeficiente de arrastre |
| `-As` | String | — | — | 4 | — | Newton (N) |

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
