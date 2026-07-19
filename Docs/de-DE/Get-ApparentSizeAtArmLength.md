# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die scheinbare Größe eines Objekts auf Armeslänge.

## Description

Berechnet die scheinbare Größe unter Verwendung der Kleinwinkelnäherung.

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

## Examples

### Example 1

```powershell
Get-ApparentSizeAtArmLength -DistanceInMeters 10 -SizeInMeters 1 -As "centimeters"
```

Berechnet die scheinbare Größe eines 1 Meter großen Objekts in 10 Metern Entfernung.

### Example 2

```powershell
Get-ApparentSizeAtArmLength 10 1
```

Berechnet die scheinbare Größe unter Verwendung von Positionsparametern.

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
