# Get-EscapeVelocityByMassAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la velocidad de escape.

## Description

Uso v = sqrt(2 G M / r).

## Syntax

```powershell
Get-EscapeVelocityByMassAndRadius [-MassInKilograms] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masa del cuerpo en kg |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Radio en metros |
| `-As` | String | — | — | 2 | — | Unidad de salida para la velocidad |

## Examples

### Example 1

```powershell
Get-EscapeVelocityByMassAndRadius -MassInKilograms 5.972e24 -RadiusInMeters 6371000 -As "km/h"
```

Calcula la velocidad de escape para un cuerpo con la masa y el radio de la Tierra.

### Example 2

```powershell
Get-EscapeVelocityByMassAndRadius 1e26 10000000
```

Calcula la velocidad de escape usando unidades por defecto de m/s.

## Related Links

- [Get-EscapeVelocityByMassAndRadius on GitHub](https://github.com/genXdev/genXdev)
