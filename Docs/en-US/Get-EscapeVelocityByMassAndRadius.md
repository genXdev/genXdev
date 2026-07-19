# Get-EscapeVelocityByMassAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates escape velocity.

## Description

Uses v = sqrt(2 G M / r).

## Syntax

```powershell
Get-EscapeVelocityByMassAndRadius [-MassInKilograms] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Mass of body in kg |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Radius in meters |
| `-As` | String | — | — | 2 | — | Output unit for velocity |

## Examples

### Example 1

```powershell
Get-EscapeVelocityByMassAndRadius -MassInKilograms 5.972e24 -RadiusInMeters 6371000 -As "km/h"
```

Calculates the escape velocity for a body with Earth's mass and radius.

### Example 2

```powershell
Get-EscapeVelocityByMassAndRadius 1e26 10000000
```

Calculates escape velocity using default m/s units.

## Related Links

- [Get-EscapeVelocityByMassAndRadius on GitHub](https://github.com/genXdev/genXdev)
