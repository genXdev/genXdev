# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates impact velocity from height.

## Description

Uses v = sqrt(2 g h) ignoring air resistance.

## Syntax

```powershell
Get-ImpactVelocityByHeightAndGravity [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Height in meters |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Gravity in m/s². Default 9.81. |
| `-As` | String | — | — | 2 | — | Output unit for velocity. Default 'm/s'. |

## Examples

### Example 1

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As "km/h"
```

Calculates impact velocity for a 100 meter fall and outputs in km/h.

### Example 2

```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

Calculates impact velocity for a 50 meter fall using default units.

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
