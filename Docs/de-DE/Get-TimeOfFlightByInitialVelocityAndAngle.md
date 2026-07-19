# Get-TimeOfFlightByInitialVelocityAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Flugzeit eines Projektils.

## Description

Verwendet T = (2 v sinθ) / g für ideale Bewegung.

## Syntax

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle [-InitialVelocityInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Anfangsgeschwindigkeit in m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Startwinkel in Grad |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Schwerkraft in m/s² (Standard: 9,81) |
| `-As` | String | — | — | 3 | — | Ausgabeeinheit für Zeit |

## Examples

### Example 1

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle -InitialVelocityInMetersPerSecond 20 -AngleInDegrees 45 -As "minutes"
```

Berechnet die Flugzeit eines Projektils, das mit 20 m/s unter 45 Grad abgeschossen wird, Ausgabe in Minuten.

### Example 2

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle 30 30
```

Berechnet die Flugzeit eines Geschosses, das mit 30 m/s unter einem Winkel von 30 Grad abgefeuert wird.

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
