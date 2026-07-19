# Get-PotentialEnergyByMassHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent zwaartekracht potentiële energie.

## Description

Gebruikt PE = m g h.

## Syntax

```powershell
Get-PotentialEnergyByMassHeightAndGravity [-MassInKilograms] <double> [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Massa in kg |
| `-HeightInMeters` | Double | ✅ | — | 1 | `0` | Hoogte in meters |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Zwaartekracht in m/s² (standaard: 9,81) |
| `-As` | String | — | — | 3 | — | Output unit for energy |

## Examples

### Example 1

```powershell
Get-PotentialEnergyByMassHeightAndGravity -MassInKilograms 10 -HeightInMeters 5 -As "calories"
```

Berekent de zwaartekracht potentiële energie voor een massa van 10 kg op een hoogte van 5 meter, en geeft het resultaat in calorieën.

### Example 2

```powershell
Get-PotentialEnergyByMassHeightAndGravity 5 10
```

Demonstreert het gebruik van positionele parameters om potentiële energie te berekenen.

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
