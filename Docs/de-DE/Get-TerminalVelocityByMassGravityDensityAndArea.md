# Get-TerminalVelocityByMassGravityDensityAndArea

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Endgeschwindigkeit.

## Description

Verwendet v = sqrt(2 m g / (ρ A C)).

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

## Examples

### Example 1

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea -MassInKilograms 80 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 0.7 -DragCoefficient 1.0 -As "mph"
```

Berechnet die Endgeschwindigkeit für eine Masse von 80 kg in Luft mit einem Luftwiderstandsbeiwert von 1,0 und gibt das Ergebnis in mph aus.

### Example 2

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea 70 1.225 0.8 0.8
```

Verwendet Positionsparameter zur Berechnung der Endgeschwindigkeit.

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
