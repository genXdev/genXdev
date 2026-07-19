# Get-RefractionAngleByIncidentAngleAndIndices

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de brekingshoek met de wet van Snellius.

## Description

Gebruikt θ2 = arcsin( (n1 / n2) sin θ1 ).

## Syntax

```powershell
Get-RefractionAngleByIncidentAngleAndIndices [-IncidentAngleInDegrees] <double> [-IndexOfRefraction1] <double> [-IndexOfRefraction2] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-IncidentAngleInDegrees` | Double | ✅ | — | 0 | `0` | Invalshoek in graden |
| `-IndexOfRefraction1` | Double | ✅ | — | 1 | `0` | Brekingsindex van het eerste medium |
| `-IndexOfRefraction2` | Double | ✅ | — | 2 | `0` | brekingsindex van het tweede medium |
| `-As` | String | — | — | 3 | — | Meeteenheid voor hoek |

## Examples

### Example 1

```powershell
Get-RefractionAngleByIncidentAngleAndIndices -IncidentAngleInDegrees 30 -IndexOfRefraction1 1 -IndexOfRefraction2 1.33 -As "radians"
```

Berekent de brekingshoek wanneer licht overgaat van lucht (n=1) naar water (n=1,33) bij een invalshoek van 30 graden.

### Example 2

```powershell
Get-RefractionAngleByIncidentAngleAndIndices 45 1 1.5
```

Berekent de brekingshoek wanneer licht overgaat van lucht (n=1) naar glas (n=1,5) onder een invalshoek van 45 graden.

## Related Links

- [Get-RefractionAngleByIncidentAngleAndIndices on GitHub](https://github.com/genXdev/genXdev)
