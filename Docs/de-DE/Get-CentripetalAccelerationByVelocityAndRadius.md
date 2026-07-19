# Get-CentripetalAccelerationByVelocityAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Zentripetalbeschleunigung.

## Description

Verwendet a = v² / r.

## Syntax

```powershell
Get-CentripetalAccelerationByVelocityAndRadius [-VelocityInMetersPerSecond] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Geschwindigkeit in m/s |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Radius in Metern |
| `-As` | String | — | — | 2 | — | meter per second squared |

## Examples

### Example 1

```powershell
Get-CentripetalAccelerationByVelocityAndRadius -VelocityInMetersPerSecond 10 -RadiusInMeters 5 -As "g"
```

Berechnet Zentripetalbeschleunigung für Geschwindigkeit 10 m/s und Radius 5 m, Ausgabe in g-Einheiten.

### Example 2

```powershell
Get-CentripetalAccelerationByVelocityAndRadius 20 10
```

Berechnet die Zentripetalbeschleunigung für Geschwindigkeit 20 m/s und Radius 10 m mithilfe von Positionsparametern.

## Related Links

- [Get-CentripetalAccelerationByVelocityAndRadius on GitHub](https://github.com/genXdev/genXdev)
