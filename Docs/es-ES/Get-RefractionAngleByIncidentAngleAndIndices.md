# Get-RefractionAngleByIncidentAngleAndIndices

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula el ángulo de refracción usando la ley de Snell.

## Description

Usa θ2 = arcsin( (n1 / n2) sen θ1 ).

## Syntax

```powershell
Get-RefractionAngleByIncidentAngleAndIndices [-IncidentAngleInDegrees] <double> [-IndexOfRefraction1] <double> [-IndexOfRefraction2] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-IncidentAngleInDegrees` | Double | ✅ | — | 0 | `0` | Ángulo de incidencia en grados |
| `-IndexOfRefraction1` | Double | ✅ | — | 1 | `0` | Índice de refracción del primer medio |
| `-IndexOfRefraction2` | Double | ✅ | — | 2 | `0` | Índice de refracción del segundo medio |
| `-As` | String | — | — | 3 | — | Unidad de salida para ángulo |

## Examples

### Example 1

```powershell
Get-RefractionAngleByIncidentAngleAndIndices -IncidentAngleInDegrees 30 -IndexOfRefraction1 1 -IndexOfRefraction2 1.33 -As "radians"
```

Calcula el ángulo de refracción cuando la luz pasa del aire (n=1) al agua (n=1.33) con una incidencia de 30 grados.

### Example 2

```powershell
Get-RefractionAngleByIncidentAngleAndIndices 45 1 1.5
```

Calcula el ángulo de refracción cuando la luz pasa del aire (n=1) al vidrio (n=1.5) con una incidencia de 45 grados.

## Related Links

- [Get-RefractionAngleByIncidentAngleAndIndices on GitHub](https://github.com/genXdev/genXdev)
