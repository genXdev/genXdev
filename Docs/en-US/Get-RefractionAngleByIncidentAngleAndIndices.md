# Get-RefractionAngleByIncidentAngleAndIndices

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates refraction angle using Snell's law.

## Description

Uses θ2 = arcsin( (n1 / n2) sin θ1 ).

## Syntax

```powershell
Get-RefractionAngleByIncidentAngleAndIndices [-IncidentAngleInDegrees] <double> [-IndexOfRefraction1] <double> [-IndexOfRefraction2] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-IncidentAngleInDegrees` | Double | ✅ | — | 0 | `0` | Incident angle in degrees |
| `-IndexOfRefraction1` | Double | ✅ | — | 1 | `0` | Refractive index of first medium |
| `-IndexOfRefraction2` | Double | ✅ | — | 2 | `0` | Refractive index of second medium |
| `-As` | String | — | — | 3 | — | Output unit for angle |

## Examples

### Example 1

```powershell
Get-RefractionAngleByIncidentAngleAndIndices -IncidentAngleInDegrees 30 -IndexOfRefraction1 1 -IndexOfRefraction2 1.33 -As "radians"
```

Calculates the refraction angle when light passes from air (n=1) to water (n=1.33) at 30 degrees incidence.

### Example 2

```powershell
Get-RefractionAngleByIncidentAngleAndIndices 45 1 1.5
```

Calculates the refraction angle when light passes from air (n=1) to glass (n=1.5) at 45 degrees incidence.

## Related Links

- [Get-RefractionAngleByIncidentAngleAndIndices on GitHub](https://github.com/genXdev/genXdev)
