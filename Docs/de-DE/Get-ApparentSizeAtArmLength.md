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
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Der Abstand zum Objekt in Metern |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | Die tatsächliche Größe des Objekts in Metern |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | Die Armlänge in Metern (Standard: 0,7) |
| `-As` | String | — | — | 3 | — | Die Einheit für die Ausgabegröße |

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
