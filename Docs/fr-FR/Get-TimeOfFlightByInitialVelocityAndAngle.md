# Get-TimeOfFlightByInitialVelocityAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule le temps de vol d'un projectile.

## Description

Utilise T = (2 v sinθ) / g pour le mouvement idéal.

## Syntax

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle [-InitialVelocityInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Vitesse initiale en m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Angle de lancement en degrés |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravité en m/s² (par défaut : 9.81) |
| `-As` | String | — | — | 3 | — | Unité de sortie pour le temps |

## Examples

### Example 1

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle -InitialVelocityInMetersPerSecond 20 -AngleInDegrees 45 -As "minutes"
```

Calcule le temps de vol pour un projectile lancé à 20 m/s à 45 degrés, résultat en minutes.

### Example 2

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle 30 30
```

Calcule le temps de vol d'un projectile lancé à 30 m/s avec un angle de 30 degrés.

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
