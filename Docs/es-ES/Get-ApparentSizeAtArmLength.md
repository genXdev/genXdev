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
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | La distancia al objeto en metros |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | El tamaño real del objeto en metros |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | La longitud del brazo en metros (predeterminado: 0.7) |
| `-As` | String | — | — | 3 | — | La unidad para el tamaño de salida |

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
