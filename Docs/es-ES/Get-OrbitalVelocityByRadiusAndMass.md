# Get-OrbitalVelocityByRadiusAndMass

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la velocidad orbital.

## Description

Utiliza v = sqrt(G M / r).

## Syntax

```powershell
Get-OrbitalVelocityByRadiusAndMass [-RadiusInMeters] <double> [-CentralMassInKilograms] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RadiusInMeters` | Double | ✅ | — | 0 | `0` | Radio orbital en metros |
| `-CentralMassInKilograms` | Double | ✅ | — | 1 | `0` | Masa central en kg |
| `-As` | String | — | — | 2 | — | Unidad de salida para la velocidad |

## Examples

### Example 1

```powershell
Get-OrbitalVelocityByRadiusAndMass -RadiusInMeters 6371000 -CentralMassInKilograms 5.972e24 -As "km/h"
```

Utiliza la masa y el radio de la Tierra para la demostración.

### Example 2

```powershell
Get-OrbitalVelocityByRadiusAndMass 10000000 1e26
```

Cálculo simple con salida predeterminada en m/s.

## Related Links

- [Get-OrbitalVelocityByRadiusAndMass on GitHub](https://github.com/genXdev/genXdev)
