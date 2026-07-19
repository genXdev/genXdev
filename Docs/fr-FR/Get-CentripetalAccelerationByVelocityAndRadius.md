# Get-CentripetalAccelerationByVelocityAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule l'accélération centripète.

## Description

Utilise a = v² / r.

## Syntax

```powershell
Get-CentripetalAccelerationByVelocityAndRadius [-VelocityInMetersPerSecond] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Vitesse en m/s |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Rayon en mètres |
| `-As` | String | — | — | 2 | — | Output unit for acceleration |

## Examples

### Example 1

```powershell
Get-CentripetalAccelerationByVelocityAndRadius -VelocityInMetersPerSecond 10 -RadiusInMeters 5 -As "g"
```

Calcule l'accélération centripète pour une vitesse de 10 m/s et un rayon de 5 m, résultat en unités g.

### Example 2

```powershell
Get-CentripetalAccelerationByVelocityAndRadius 20 10
```

Calcule l'accélération centripète pour une vitesse de 20 m/s et un rayon de 10 m en utilisant des paramètres positionnels.

## Related Links

- [Get-CentripetalAccelerationByVelocityAndRadius on GitHub](https://github.com/genXdev/genXdev)
