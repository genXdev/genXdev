# Get-RefractionAngleByIncidentAngleAndIndices

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule l'angle de réfraction en utilisant la loi de Snell.

## Description

Utilise θ2 = arcsin( (n1 / n2) sin θ1 ).

## Syntax

```powershell
Get-RefractionAngleByIncidentAngleAndIndices [-IncidentAngleInDegrees] <double> [-IndexOfRefraction1] <double> [-IndexOfRefraction2] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-IncidentAngleInDegrees` | Double | ✅ | — | 0 | `0` | Angle d'incidence en degrés |
| `-IndexOfRefraction1` | Double | ✅ | — | 1 | `0` | Indice de réfraction du premier milieu |
| `-IndexOfRefraction2` | Double | ✅ | — | 2 | `0` | Indice de réfraction du second milieu |
| `-As` | String | — | — | 3 | — | Unité de sortie pour l'angle |

## Examples

### Example 1

```powershell
Get-RefractionAngleByIncidentAngleAndIndices -IncidentAngleInDegrees 30 -IndexOfRefraction1 1 -IndexOfRefraction2 1.33 -As "radians"
```

Calcule l'angle de réfraction lorsque la lumière passe de l'air (n=1) à l'eau (n=1,33) avec une incidence de 30 degrés.

### Example 2

```powershell
Get-RefractionAngleByIncidentAngleAndIndices 45 1 1.5
```

Calcule l'angle de réfraction lorsque la lumière passe de l'air (n=1) au verre (n=1,5) avec une incidence de 45 degrés.

## Related Links

- [Get-RefractionAngleByIncidentAngleAndIndices on GitHub](https://github.com/genXdev/genXdev)
