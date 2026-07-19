# Get-KineticEnergyByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent kinetische energie.

## Description

Gebruikt KE = 1/2 m v².

## Syntax

```powershell
Get-KineticEnergyByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Massa in kg |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Snelheid in m/s |
| `-As` | String | — | — | 2 | — | Output unit for energy |

## Examples

### Example 1

```powershell
Get-KineticEnergyByMassAndVelocity -MassInKilograms 10 -VelocityInMetersPerSecond 5 -As "calories"
```

Berekent kinetische energie voor een massa van 10 kg die beweegt met 5 m/s en geeft uit in calorieën.

### Example 2

```powershell
Get-KineticEnergyByMassAndVelocity 5 10
```

Berekent de kinetische energie voor een massa van 5 kg die met 10 m/s beweegt met behulp van positionele parameters.

## Related Links

- [Get-KineticEnergyByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
