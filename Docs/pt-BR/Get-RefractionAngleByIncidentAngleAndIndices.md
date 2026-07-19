# Get-RefractionAngleByIncidentAngleAndIndices

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula o ângulo de refração usando a lei de Snell.

## Description

Usa-se θ2 = arcsen( (n1 / n2) sen θ1 ).

## Syntax

```powershell
Get-RefractionAngleByIncidentAngleAndIndices [-IncidentAngleInDegrees] <double> [-IndexOfRefraction1] <double> [-IndexOfRefraction2] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-IncidentAngleInDegrees` | Double | ✅ | — | 0 | `0` | Ângulo de incidência em graus |
| `-IndexOfRefraction1` | Double | ✅ | — | 1 | `0` | Índice de refração do primeiro meio |
| `-IndexOfRefraction2` | Double | ✅ | — | 2 | `0` | Índice de refração do segundo meio |
| `-As` | String | — | — | 3 | — | Unidade de saída para ângulo |

## Examples

### Example 1

```powershell
Get-RefractionAngleByIncidentAngleAndIndices -IncidentAngleInDegrees 30 -IndexOfRefraction1 1 -IndexOfRefraction2 1.33 -As "radians"
```

Calcula o ângulo de refração quando a luz passa do ar (n=1) para a água (n=1,33) com incidência de 30 graus.

### Example 2

```powershell
Get-RefractionAngleByIncidentAngleAndIndices 45 1 1.5
```

Calcula o ângulo de refração quando a luz passa do ar (n=1) para o vidro (n=1,5) com incidência de 45 graus.

## Related Links

- [Get-RefractionAngleByIncidentAngleAndIndices on GitHub](https://github.com/genXdev/genXdev)
