# Get-DragForceByVelocityDensityAreaAndCoefficient

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la fuerza de arrastre.

## Description

Usa F = 1/2 C ρ A v².

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

## Examples

### Example 1

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient -VelocityInMetersPerSecond 10 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 1 -Coefficient 0.5 -As "poundforce"
```

Calcula la fuerza de arrastre usando una velocidad de 10 m/s, densidad del aire de 1.225 kg/m³, área de 1 m² y coeficiente de 0.5, dando el resultado en libras-fuerza.

### Example 2

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient 20 1.225 2 0.3
```

Calcula la fuerza de arrastre usando parámetros posicionales: velocidad 20 m/s, densidad 1.225 kg/m³, área 2 m², coeficiente 0.3.

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
