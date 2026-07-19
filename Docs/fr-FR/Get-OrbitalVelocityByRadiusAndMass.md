# Get-OrbitalVelocityByRadiusAndMass

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la vitesse orbitale.

## Description

Utilise v = sqrt(G M / r).

## Syntax

```powershell
Get-OrbitalVelocityByRadiusAndMass [-RadiusInMeters] <double> [-CentralMassInKilograms] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RadiusInMeters` | Double | ✅ | — | 0 | `0` | Rayon orbital en mètres |
| `-CentralMassInKilograms` | Double | ✅ | — | 1 | `0` | Masse centrale en kg |
| `-As` | String | — | — | 2 | — | Output unit for velocity |

## Examples

### Example 1

```powershell
Get-OrbitalVelocityByRadiusAndMass -RadiusInMeters 6371000 -CentralMassInKilograms 5.972e24 -As "km/h"
```

Utilise la masse et le rayon de la Terre pour la démonstration.

### Example 2

```powershell
Get-OrbitalVelocityByRadiusAndMass 10000000 1e26
```

Calcul simple avec sortie par défaut en m/s.

## Related Links

- [Get-OrbitalVelocityByRadiusAndMass on GitHub](https://github.com/genXdev/genXdev)
