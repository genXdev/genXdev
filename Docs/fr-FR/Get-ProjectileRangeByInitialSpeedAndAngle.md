# Get-ProjectileRangeByInitialSpeedAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la portée d'un projectile.

## Description

Utilise la formule R = (v² sin(2θ)) / g pour le mouvement parabolique idéal.

## Syntax

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle [-InitialSpeedInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Vitesse initiale en m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Angle de lancement en degrés |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravité en m/s² (par défaut : 9.81) |
| `-As` | String | — | — | 3 | — | Unité de sortie pour la plage |

## Examples

### Example 1

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle -InitialSpeedInMetersPerSecond 20 -AngleInDegrees 45 -As "feet"
```

Calcule la portée à l'aide de la formule du mouvement projectile.

### Example 2

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle 30 30
```

Calcule la plage avec des paramètres positionnels.

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
