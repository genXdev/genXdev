# Get-AtEyeLengthSizeInMM

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die scheinbare Größe eines Objekts in mm auf Armeslänge.

## Description

Berechnet die Größe, die ein Objekt erscheinen würde, wenn es aus der durchschnittlichen Armlänge eines Erwachsenen (ca. 0,7 Meter) betrachtet wird, basierend auf seiner tatsächlichen Größe und Entfernung. Die Berechnung verwendet die Kleinwinkelnäherung für die Winkelgröße.

## Syntax

```powershell
Get-AtEyeLengthSizeInMM [-DistanceInMeters] <double> [-SizeInMeters] <double> [-EyeToArmLengthInMeters <double>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | The distance to the object in meters. |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | Die tatsächliche Größe des Objekts in Metern. |
| `-EyeToArmLengthInMeters` | Double | — | — | Named | `0` | Die Armlängedistanz in Metern. Standardwert ist 0,7. |

## Examples

### Example 1

```powershell
Get-AtEyeLengthSizeInMM -DistanceInMeters 10 -SizeInMeters 1
```

Berechnet die scheinbare Größe auf Armeslänge für ein Objekt mit einer Größe von 1 Meter in 10 Metern Entfernung.

## Related Links

- [Get-AtEyeLengthSizeInMM on GitHub](https://github.com/genXdev/genXdev)
