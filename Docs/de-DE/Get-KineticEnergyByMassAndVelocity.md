# Get-KineticEnergyByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die kinetische Energie.

## Description

Verwendet KE = 1/2 m v².

## Syntax

```powershell
Get-KineticEnergyByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masse in kg |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Geschwindigkeit in m/s |
| `-As` | String | — | — | 2 | — | joule |

## Examples

### Example 1

```powershell
Get-KineticEnergyByMassAndVelocity -MassInKilograms 10 -VelocityInMetersPerSecond 5 -As "calories"
```

Berechnet die kinetische Energie für eine Masse von 10 kg, die sich mit 5 m/s bewegt, und gibt sie in Kalorien aus.

### Example 2

```powershell
Get-KineticEnergyByMassAndVelocity 5 10
```

Berechnet die kinetische Energie für eine Masse von 5 kg, die sich mit 10 m/s bewegt, unter Verwendung von Positionsparametern.

## Related Links

- [Get-KineticEnergyByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
