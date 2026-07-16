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
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Масса в кг |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Сила тяжести в м/с² (по умолчанию: 9,81) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | Fluid density in kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | Площадь поперечного сечения в м² |
| `-DragCoefficient` | Double | — | — | 4 | `0` | Коэффициент лобового сопротивления (по умолчанию: 0.5) |
| `-As` | String | — | — | 5 | — | Единица измерения скорости |

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
