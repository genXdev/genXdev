# Get-OrbitalVelocityByRadiusAndMass

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates orbital velocity.

## Description

Uses v = sqrt(G M / r).

## Syntax

```powershell
Get-OrbitalVelocityByRadiusAndMass [-RadiusInMeters] <double> [-CentralMassInKilograms] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RadiusInMeters` | Double | ✅ | — | 0 | `0` | Orbital radius in meters |
| `-CentralMassInKilograms` | Double | ✅ | — | 1 | `0` | Central mass in kg |
| `-As` | String | — | — | 2 | — | Output unit for velocity |

## Examples

### Example 1

```powershell
Get-OrbitalVelocityByRadiusAndMass -RadiusInMeters 6371000 -CentralMassInKilograms 5.972e24 -As "km/h"
```

Uses Earth's mass and radius for demonstration.

### Example 2

```powershell
Get-OrbitalVelocityByRadiusAndMass 10000000 1e26
```

Simple calculation with default m/s output.

## Related Links

- [Get-OrbitalVelocityByRadiusAndMass on GitHub](https://github.com/genXdev/genXdev)
