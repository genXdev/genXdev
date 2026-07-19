# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la velocidad de impacto a partir de la altura.

## Description

Usa v = sqrt(2 g h) ignorando la resistencia del aire.

## Syntax

```powershell
Get-ImpactVelocityByHeightAndGravity [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Altura en metros |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Gravedad en m/s². Valor por defecto: 9.81. |
| `-As` | String | — | — | 2 | — | Output unit for velocity. Default 'm/s'. |

## Examples

### Example 1

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As "km/h"
```

Calcula la velocidad de impacto para una caída de 100 metros y la muestra en km/h.

### Example 2

```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

Calcula la velocidad de impacto para una caída de 50 metros usando unidades predeterminadas.

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
