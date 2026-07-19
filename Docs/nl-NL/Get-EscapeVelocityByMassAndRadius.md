# Get-EscapeVelocityByMassAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de ontsnappingssnelheid.

## Description

Gebruikt v = sqrt(2 G M / r).

## Syntax

```powershell
Get-EscapeVelocityByMassAndRadius [-MassInKilograms] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Massa van het lichaam in kg |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Straal in meters |
| `-As` | String | — | — | 2 | — | Output unit for velocity |

## Examples

### Example 1

```powershell
Get-EscapeVelocityByMassAndRadius -MassInKilograms 5.972e24 -RadiusInMeters 6371000 -As "km/h"
```

Berekent de ontsnappingssnelheid voor een lichaam met de massa en straal van de aarde.

### Example 2

```powershell
Get-EscapeVelocityByMassAndRadius 1e26 10000000
```

Berekent ontsnappingssnelheid met standaard m/s-eenheden.

## Related Links

- [Get-EscapeVelocityByMassAndRadius on GitHub](https://github.com/genXdev/genXdev)
