# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Aufprallgeschwindigkeit aus der Höhe.

## Description

Verwendet v = sqrt(2 g h) unter Vernachlässigung des Luftwiderstands.

## Syntax

```powershell
Get-ImpactVelocityByHeightAndGravity [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Höhe in Metern |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Schwerkraft in m/s². Standard 9,81. |
| `-As` | String | — | — | 2 | — | Einheit für Geschwindigkeit. Standard 'm/s'. |

## Examples

### Example 1

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As "km/h"
```

Berechnet die Aufprallgeschwindigkeit für einen 100-Meter-Sturz und gibt sie in km/h aus.

### Example 2

```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

Berechnet die Aufprallgeschwindigkeit für einen 50 Meter Fall unter Verwendung der Standardeinheiten.

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
