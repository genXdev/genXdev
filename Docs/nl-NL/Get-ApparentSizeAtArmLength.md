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
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | De afstand tot het object in meters |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | De werkelijke grootte van het object in meters |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | De armlengte in meters (standaard: 0,7) |
| `-As` | String | — | — | 3 | — | De eenheid voor de uitvoergrootte |

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
