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
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | A distância até o objeto em metros |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | O tamanho real do objeto em metros |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | O comprimento do braço em metros (padrão: 0,7) |
| `-As` | String | — | — | 3 | — | A unidade para o tamanho da saída |

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
