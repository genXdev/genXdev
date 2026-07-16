# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
