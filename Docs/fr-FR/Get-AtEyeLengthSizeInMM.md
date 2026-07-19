# Get-AtEyeLengthSizeInMM

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la taille apparente en mm d'un objet à bout de bras.

## Description

Calcule la taille apparente d'un objet s'il était observé à la distance d'un bras d'adulte moyen (environ 0,7 mètre), en fonction de sa taille réelle et de sa distance. Le calcul utilise l'approximation des petits angles pour la taille angulaire.

## Syntax

```powershell
Get-AtEyeLengthSizeInMM [-DistanceInMeters] <double> [-SizeInMeters] <double> [-EyeToArmLengthInMeters <double>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | La distance à l'objet en mètres. |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | La taille réelle de l'objet en mètres. |
| `-EyeToArmLengthInMeters` | Double | — | — | Named | `0` | La distance de longueur de bras en mètres. La valeur par défaut est 0,7. |

## Examples

### Example 1

```powershell
Get-AtEyeLengthSizeInMM -DistanceInMeters 10 -SizeInMeters 1
```

Calcule la taille apparente à bout de bras pour un objet de 1 mètre situé à 10 mètres de distance.

## Related Links

- [Get-AtEyeLengthSizeInMM on GitHub](https://github.com/genXdev/genXdev)
