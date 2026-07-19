# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la vitesse d'impact à partir de la hauteur.

## Description

Utilise v = sqrt(2 g h) en ignorant la résistance de l'air.

## Syntax

```powershell
Get-ImpactVelocityByHeightAndGravity [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Hauteur en mètres |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Gravité en m/s². Par défaut 9,81. |
| `-As` | String | — | — | 2 | — | Unité de sortie pour la vitesse. Par défaut 'm/s'. |

## Examples

### Example 1

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As "km/h"
```

Calcule la vitesse d'impact pour une chute de 100 mètres et la sort en km/h.

### Example 2

```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

Calcule la vitesse d'impact pour une chute de 50 mètres en utilisant les unités par défaut.

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
