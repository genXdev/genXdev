# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a velocidade de impacto a partir da altura.

## Description

Usa v = sqrt(2 g h) ignorando resistência do ar.

## Syntax

```powershell
Get-ImpactVelocityByHeightAndGravity [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Altura em metros |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Gravidade em m/s². Padrão 9,81. |
| `-As` | String | — | — | 2 | — | Unidade de saída para velocidade. Padrão 'm/s'. |

## Examples

### Example 1

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As "km/h"
```

Calcula a velocidade de impacto para uma queda de 100 metros e exibe em km/h.

### Example 2

```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

Calcula a velocidade de impacto para uma queda de 50 metros usando unidades padrão.

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
