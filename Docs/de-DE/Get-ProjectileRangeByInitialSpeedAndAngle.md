# Get-ProjectileRangeByInitialSpeedAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Reichweite eines Projektils.

## Description

Verwendet die Formel R = (v² sin(2θ)) / g für die ideale Projektilbewegung.

## Syntax

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle [-InitialSpeedInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Initial speed in m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Startwinkel in Grad |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Schwerkraft in m/s² (Standard: 9,81) |
| `-As` | String | — | — | 3 | — | Output unit for range |

## Examples

### Example 1

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle -InitialSpeedInMetersPerSecond 20 -AngleInDegrees 45 -As "feet"
```

Berechnet die Reichweite mithilfe der Formel für die Wurfparabel.

### Example 2

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle 30 30
```

Berechnet den Bereich mit Positionsparametern.

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
