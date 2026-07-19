# Get-PotentialEnergyByMassHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates gravitational potential energy.

## Description

Uses PE = m g h.

## Syntax

```powershell
Get-PotentialEnergyByMassHeightAndGravity [-MassInKilograms] <double> [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Mass in kg |
| `-HeightInMeters` | Double | ✅ | — | 1 | `0` | Height in meters |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravity in m/s² (default: 9.81) |
| `-As` | String | — | — | 3 | — | Output unit for energy |

## Examples

### Example 1

```powershell
Get-PotentialEnergyByMassHeightAndGravity -MassInKilograms 10 -HeightInMeters 5 -As "calories"
```

Calculates the gravitational potential energy for a 10kg mass at a height of 5 meters, outputting the result in calories.

### Example 2

```powershell
Get-PotentialEnergyByMassHeightAndGravity 5 10
```

Demonstrates using positional parameters to calculate potential energy.

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
