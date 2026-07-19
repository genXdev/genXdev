# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la taille apparente d'un objet à bout de bras.

## Description

Calcule la taille apparente en utilisant l'approximation des petits angles.

## Syntax

```powershell
Get-ApparentSizeAtArmLength [-DistanceInMeters] <double> [-SizeInMeters] <double> [[-ArmLengthInMeters] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | La distance à l'objet en mètres |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | La taille réelle de l'objet en mètres |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | Longueur du bras en mètres (valeur par défaut : 0,7) |
| `-As` | String | — | — | 3 | — | The unit for the output size |

## Examples

### Example 1

```powershell
Get-ApparentSizeAtArmLength -DistanceInMeters 10 -SizeInMeters 1 -As "centimeters"
```

Calcule la taille apparente d'un objet de 1 mètre à une distance de 10 mètres.

### Example 2

```powershell
Get-ApparentSizeAtArmLength 10 1
```

Calcule la taille apparente en utilisant les paramètres de position.

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
