# Get-AtEyeLengthSizeInMM

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de schijnbare grootte in mm van een object op armlengte.

## Description

Berekent de grootte die een object zou lijken te hebben als het op armlengte van een gemiddelde volwassene (ongeveer 0,7 meter) wordt bekeken, gegeven de werkelijke grootte en afstand. De berekening gebruikt de kleine-hoeken-benadering voor de hoekgrootte.

## Syntax

```powershell
Get-AtEyeLengthSizeInMM [-DistanceInMeters] <double> [-SizeInMeters] <double> [-EyeToArmLengthInMeters <double>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | De afstand tot het object in meters. |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | De werkelijke grootte van het object in meters. |
| `-EyeToArmLengthInMeters` | Double | — | — | Named | `0` | De armlengte-afstand in meters. Standaardwaarde is 0,7. |

## Examples

### Example 1

```powershell
Get-AtEyeLengthSizeInMM -DistanceInMeters 10 -SizeInMeters 1
```

Berekent de schijnbare grootte op armlengte voor een object van 1 meter groot op een afstand van 10 meter.

## Related Links

- [Get-AtEyeLengthSizeInMM on GitHub](https://github.com/genXdev/genXdev)
