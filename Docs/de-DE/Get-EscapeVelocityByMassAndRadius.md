# Get-EscapeVelocityByMassAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Fluchtgeschwindigkeit.

## Description

Verwendet v = sqrt(2 G M / r).

## Syntax

```powershell
Get-EscapeVelocityByMassAndRadius [-MassInKilograms] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masse des Körpers in kg |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Radius in Metern |
| `-As` | String | — | — | 2 | — | m/s |

## Examples

### Example 1

```powershell
Get-EscapeVelocityByMassAndRadius -MassInKilograms 5.972e24 -RadiusInMeters 6371000 -As "km/h"
```

Berechnet die Fluchtgeschwindigkeit für einen Körper mit der Masse und dem Radius der Erde.

### Example 2

```powershell
Get-EscapeVelocityByMassAndRadius 1e26 10000000
```

Berechnet die Fluchtgeschwindigkeit mit Standard-M/s-Einheiten.

## Related Links

- [Get-EscapeVelocityByMassAndRadius on GitHub](https://github.com/genXdev/genXdev)
