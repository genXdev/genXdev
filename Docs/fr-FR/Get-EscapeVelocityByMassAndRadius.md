# Get-EscapeVelocityByMassAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la vitesse d'évasion.

## Description

Utilise v = sqrt(2 G M / r).

## Syntax

```powershell
Get-EscapeVelocityByMassAndRadius [-MassInKilograms] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masse du corps en kg |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Rayon en mètres |
| `-As` | String | — | — | 2 | — | Output unit for velocity |

## Examples

### Example 1

```powershell
Get-EscapeVelocityByMassAndRadius -MassInKilograms 5.972e24 -RadiusInMeters 6371000 -As "km/h"
```

Calcule la vitesse de libération pour un corps ayant la masse et le rayon de la Terre.

### Example 2

```powershell
Get-EscapeVelocityByMassAndRadius 1e26 10000000
```

Calcule la vitesse d'échappement en utilisant les unités m/s par défaut.

## Related Links

- [Get-EscapeVelocityByMassAndRadius on GitHub](https://github.com/genXdev/genXdev)
