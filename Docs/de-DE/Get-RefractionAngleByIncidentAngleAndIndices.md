# Get-RefractionAngleByIncidentAngleAndIndices

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet den Brechungswinkel mithilfe des Snelliusschen Gesetzes.

## Description

Verwendet θ2 = arcsin( (n1 / n2) sin θ1 ).

## Syntax

```powershell
Get-RefractionAngleByIncidentAngleAndIndices [-IncidentAngleInDegrees] <double> [-IndexOfRefraction1] <double> [-IndexOfRefraction2] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-IncidentAngleInDegrees` | Double | ✅ | — | 0 | `0` | Einfallswinkel in Grad |
| `-IndexOfRefraction1` | Double | ✅ | — | 1 | `0` | Brechungsindex des ersten Mediums |
| `-IndexOfRefraction2` | Double | ✅ | — | 2 | `0` | Brechungsindex des zweiten Mediums |
| `-As` | String | — | — | 3 | — | Output unit for angle |

## Examples

### Example 1

```powershell
Get-RefractionAngleByIncidentAngleAndIndices -IncidentAngleInDegrees 30 -IndexOfRefraction1 1 -IndexOfRefraction2 1.33 -As "radians"
```

Berechnet den Brechungswinkel, wenn Licht mit 30 Grad Einfallswinkel von Luft (n=1) in Wasser (n=1,33) übergeht.

### Example 2

```powershell
Get-RefractionAngleByIncidentAngleAndIndices 45 1 1.5
```

Berechnet den Brechungswinkel, wenn Licht von Luft (n=1) zu Glas (n=1,5) unter 45 Grad Einfallswinkel übergeht.

## Related Links

- [Get-RefractionAngleByIncidentAngleAndIndices on GitHub](https://github.com/genXdev/genXdev)
