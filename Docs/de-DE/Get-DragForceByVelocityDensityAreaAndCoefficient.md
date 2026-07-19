# Get-DragForceByVelocityDensityAreaAndCoefficient

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Widerstandskraft.

## Description

Verwendet F = 1/2 C ρ A v².

## Syntax

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient [-VelocityInMetersPerSecond] <double> [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [-Coefficient] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Geschwindigkeit in m/s |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | Fluiddichte in kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 2 | `0` | Querschnittsfläche in m² |
| `-Coefficient` | Double | ✅ | — | 3 | `0` | Widerstandsbeiwert |
| `-As` | String | — | — | 4 | — | Newton (N) |

## Examples

### Example 1

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient -VelocityInMetersPerSecond 10 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 1 -Coefficient 0.5 -As "poundforce"
```

Berechnet die Widerstandskraft mit einer Geschwindigkeit von 10 m/s, Luftdichte von 1,225 kg/m³, Fläche von 1 m² und einem Koeffizienten von 0,5, ausgegeben in Poundforce.

### Example 2

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient 20 1.225 2 0.3
```

Berechnet die Widerstandskraft mit ortsabhängigen Parametern: Geschwindigkeit 20 m/s, Dichte 1,225 kg/m³, Fläche 2 m², Beiwert 0,3.

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
