# Get-TerminalVelocityByMassGravityDensityAndArea

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la vitesse terminale.

## Description

Utilise v = sqrt(2 m g / (ρ A C)).

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

## Examples

### Example 1

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea -MassInKilograms 80 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 0.7 -DragCoefficient 1.0 -As "mph"
```

Calcule la vitesse terminale pour une masse de 80 kg dans l'air avec un coefficient de traînée de 1,0, en affichant le résultat en mph.

### Example 2

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea 70 1.225 0.8 0.8
```

Utilise des paramètres positionnels pour calculer la vitesse terminale.

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
