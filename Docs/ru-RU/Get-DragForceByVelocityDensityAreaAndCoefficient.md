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
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Скорость в м/с |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | Fluid density in kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 2 | `0` | Площадь поперечного сечения в м² |
| `-Coefficient` | Double | ✅ | — | 3 | `0` | Коэффициент лобового сопротивления |
| `-As` | String | — | — | 4 | — | Единица измерения силы |

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
