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
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Расстояние до объекта в метрах |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | Фактический размер объекта в метрах |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | Длина руки в метрах (по умолчанию: 0.7) |
| `-As` | String | — | — | 3 | — | Единица измерения выходного размера |

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
