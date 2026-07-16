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
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Massa in kg |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Zwaartekracht in m/s² (standaard: 9,81) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | Vloeistofdichtheid in kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | Doorsnedeoppervlak in m² |
| `-DragCoefficient` | Double | — | — | 4 | `0` | Luchtweerstandscoëfficiënt (standaard: 0,5) |
| `-As` | String | — | — | 5 | — | Output unit for velocity |

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
