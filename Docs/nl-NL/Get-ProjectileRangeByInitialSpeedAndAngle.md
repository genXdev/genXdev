# Get-ProjectileRangeByInitialSpeedAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent het bereik van een projectiel.

## Description

Gebruikt de formule R = (v² sin(2θ)) / g voor ideale projectielbeweging.

## Syntax

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle [-InitialSpeedInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Beginsnelheid in m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Lanceringshoek in graden |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Zwaartekracht in m/s² (standaard: 9,81) |
| `-As` | String | — | — | 3 | — | Uitvoereenheid voor bereik |

## Examples

### Example 1

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle -InitialSpeedInMetersPerSecond 20 -AngleInDegrees 45 -As "feet"
```

Berekent het bereik met behulp van de formule voor projectielbeweging.

### Example 2

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle 30 30
```

Berekent het bereik met positieparameters.

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
