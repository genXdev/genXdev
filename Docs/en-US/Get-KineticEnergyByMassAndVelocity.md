# Get-KineticEnergyByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates kinetic energy.

## Description

Uses KE = 1/2 m v².

## Syntax

```powershell
Get-KineticEnergyByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Mass in kg |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Velocity in m/s |
| `-As` | String | — | — | 2 | — | Output unit for energy |

## Examples

### Example 1

```powershell
Get-KineticEnergyByMassAndVelocity -MassInKilograms 10 -VelocityInMetersPerSecond 5 -As "calories"
```

Calculates kinetic energy for a 10kg mass moving at 5 m/s and outputs in calories.

### Example 2

```powershell
Get-KineticEnergyByMassAndVelocity 5 10
```

Calculates kinetic energy for a 5kg mass moving at 10 m/s using positional parameters.

## Related Links

- [Get-KineticEnergyByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
