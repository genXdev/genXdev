# Get-TimeOfFlightByInitialVelocityAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de vluchttijd van een projectiel.

## Description

Gebruikt T = (2 v sinθ) / g voor ideale beweging.

## Syntax

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle [-InitialVelocityInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Beginsnelheid in m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Lanceringshoek in graden |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Zwaartekracht in m/s² (standaard: 9,81) |
| `-As` | String | — | — | 3 | — | Output eenheid voor tijd |

## Examples

### Example 1

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle -InitialVelocityInMetersPerSecond 20 -AngleInDegrees 45 -As "minutes"
```

Berekent de vluchttijd voor een projectiel gelanceerd met 20 m/s onder een hoek van 45 graden, uitvoer in minuten.

### Example 2

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle 30 30
```

Berekent de vluchttijd voor een projectiel gelanceerd met 30 m/s onder een hoek van 30 graden.

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
