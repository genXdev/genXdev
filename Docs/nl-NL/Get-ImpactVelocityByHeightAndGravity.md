# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent impactsnelheid van hoogte.

## Description

Gebruik v = sqrt(2 g h) waarbij luchtweerstand wordt genegeerd.

## Syntax

```powershell
Get-ImpactVelocityByHeightAndGravity [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Hoogte in meters |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Zwaartekracht in m/s². Standaard 9,81. |
| `-As` | String | — | — | 2 | — | Output unit for velocity. Default 'm/s'. |

## Examples

### Example 1

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As "km/h"
```

Berekent de impactsnelheid voor een val van 100 meter en geeft deze weer in km/u.

### Example 2

```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

Berekent impactsnelheid voor een val van 50 meter met standaard eenheden.

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
