# Get-TerminalVelocityByMassGravityDensityAndArea

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de eindsnelheid.

## Description

Gebruik v = sqrt(2 m g / (ρ A C)).

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

## Examples

### Example 1

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea -MassInKilograms 80 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 0.7 -DragCoefficient 1.0 -As "mph"
```

Berekent de eindsnelheid voor een massa van 80 kg in lucht met een weerstandscoëfficiënt van 1,0, en geeft het resultaat weer in mph.

### Example 2

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea 70 1.225 0.8 0.8
```

Gebruikt positionele parameters om de eindsnelheid te berekenen.

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
