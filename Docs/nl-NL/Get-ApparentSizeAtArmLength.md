# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de schijnbare grootte van een object op armlengte.

## Description

Berekent de schijnbare grootte met behulp van de benadering voor kleine hoeken.

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

## Examples

### Example 1

```powershell
Get-ApparentSizeAtArmLength -DistanceInMeters 10 -SizeInMeters 1 -As "centimeters"
```

Berekent de schijnbare grootte van een object van 1 meter op 10 meter afstand.

### Example 2

```powershell
Get-ApparentSizeAtArmLength 10 1
```

Berekent de schijnbare grootte met behulp van positieparameters.

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
