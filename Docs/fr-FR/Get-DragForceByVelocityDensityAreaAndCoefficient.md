# Get-DragForceByVelocityDensityAreaAndCoefficient

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la force de traînée.

## Description

Utilise F = 1/2 C ρ A v².

## Syntax

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient [-VelocityInMetersPerSecond] <double> [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [-Coefficient] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Vitesse en m/s |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | Densité du fluide en kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 2 | `0` | Section transversale en m² |
| `-Coefficient` | Double | ✅ | — | 3 | `0` | coefficient de traînée |
| `-As` | String | — | — | 4 | — | Output unit for force |

## Examples

### Example 1

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient -VelocityInMetersPerSecond 10 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 1 -Coefficient 0.5 -As "poundforce"
```

Calcule la force de traînée en utilisant une vitesse de 10 m/s, une densité de l'air de 1,225 kg/m³, une surface de 1 m² et un coefficient de 0,5, en sortant en livre-force.

### Example 2

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient 20 1.225 2 0.3
```

Calcule la force de traînée à l'aide des paramètres positionnels : vélocité 20 m/s, densité 1,225 kg/m³, surface 2 m², coefficient 0,3.

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
