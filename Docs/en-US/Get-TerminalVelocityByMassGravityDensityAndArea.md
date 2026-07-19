# Get-TerminalVelocityByMassGravityDensityAndArea

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates terminal velocity.

## Description

Uses v = sqrt(2 m g / (ρ A C)).

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

## Examples

### Example 1

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea -MassInKilograms 80 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 0.7 -DragCoefficient 1.0 -As "mph"
```

Calculates the terminal velocity for a mass of 80 kg in air with a drag coefficient of 1.0, outputting the result in mph.

### Example 2

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea 70 1.225 0.8 0.8
```

Uses positional parameters to calculate terminal velocity.

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
