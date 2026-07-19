# Get-RefractionAngleByIncidentAngleAndIndices

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет угол преломления, используя закон Снеллиуса.

## Description

Использует θ2 = arcsin( (n1 / n2) sin θ1 ).

## Syntax

```powershell
Get-RefractionAngleByIncidentAngleAndIndices [-IncidentAngleInDegrees] <double> [-IndexOfRefraction1] <double> [-IndexOfRefraction2] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-IncidentAngleInDegrees` | Double | ✅ | — | 0 | `0` | Угол падения в градусах |
| `-IndexOfRefraction1` | Double | ✅ | — | 1 | `0` | Показатель преломления первой среды |
| `-IndexOfRefraction2` | Double | ✅ | — | 2 | `0` | Показатель преломления второй среды |
| `-As` | String | — | — | 3 | — | Output unit for angle |

## Examples

### Example 1

```powershell
Get-RefractionAngleByIncidentAngleAndIndices -IncidentAngleInDegrees 30 -IndexOfRefraction1 1 -IndexOfRefraction2 1.33 -As "radians"
```

Рассчитывает угол преломления, когда свет переходит из воздуха (n=1) в воду (n=1,33) под углом падения 30 градусов.

### Example 2

```powershell
Get-RefractionAngleByIncidentAngleAndIndices 45 1 1.5
```

Вычисляет угол преломления при переходе света из воздуха (n=1) в стекло (n=1.5) под углом падения 45 градусов.

## Related Links

- [Get-RefractionAngleByIncidentAngleAndIndices on GitHub](https://github.com/genXdev/genXdev)
