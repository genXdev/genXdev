# Get-CentripetalAccelerationByVelocityAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates centripetal acceleration.

## Description

Uses a = v² / r.

## Syntax

```powershell
Get-CentripetalAccelerationByVelocityAndRadius [-VelocityInMetersPerSecond] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Velocity in m/s |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Radius in meters |
| `-As` | String | — | — | 2 | — | Output unit for acceleration |

## Examples

### Example 1

```powershell
Get-CentripetalAccelerationByVelocityAndRadius -VelocityInMetersPerSecond 10 -RadiusInMeters 5 -As "g"
```

Calculates centripetal acceleration for velocity 10 m/s and radius 5 m, output in g units.

### Example 2

```powershell
Get-CentripetalAccelerationByVelocityAndRadius 20 10
```

Calculates centripetal acceleration for velocity 20 m/s and radius 10 m using positional parameters.

## Related Links

- [Get-CentripetalAccelerationByVelocityAndRadius on GitHub](https://github.com/genXdev/genXdev)
