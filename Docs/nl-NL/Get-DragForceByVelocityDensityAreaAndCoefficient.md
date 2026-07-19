# Get-DragForceByVelocityDensityAreaAndCoefficient

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de weerstandskracht.

## Description

Gebruikt F = 1/2 C ρ A v².

## Syntax

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient [-VelocityInMetersPerSecond] <double> [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [-Coefficient] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Snelheid in m/s |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | Vloeistofdichtheid in kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 2 | `0` | Doorsnedeoppervlak in m² |
| `-Coefficient` | Double | ✅ | — | 3 | `0` | weerstandscoëfficiënt |
| `-As` | String | — | — | 4 | — | Eenheid voor kracht |

## Examples

### Example 1

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient -VelocityInMetersPerSecond 10 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 1 -Coefficient 0.5 -As "poundforce"
```

Berekent de sleepkracht met een snelheid van 10 m/s, luchtdichtheid 1,225 kg/m³, oppervlakte 1 m² en coëfficiënt 0,5, met uitvoer in pondkracht.

### Example 2

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient 20 1.225 2 0.3
```

Berekent de weerstandskracht met behulp van positionele parameters: snelheid 20 m/s, dichtheid 1,225 kg/m³, oppervlakte 2 m², coëfficiënt 0,3.

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
