# Get-RefractionAngleByIncidentAngleAndIndices

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 使用斯涅尔定律计算折射角。

## Description

使用 θ2 = arcsin( (n1 / n2) sin θ1 )。

## Syntax

```powershell
Get-RefractionAngleByIncidentAngleAndIndices [-IncidentAngleInDegrees] <double> [-IndexOfRefraction1] <double> [-IndexOfRefraction2] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-IncidentAngleInDegrees` | Double | ✅ | — | 0 | `0` | 入射角（度） |
| `-IndexOfRefraction1` | Double | ✅ | — | 1 | `0` | 第一种介质的折射率 |
| `-IndexOfRefraction2` | Double | ✅ | — | 2 | `0` | 第二介质的折射率 |
| `-As` | String | — | — | 3 | — | 角度输出单位 |

## Examples

### Example 1

```powershell
Get-RefractionAngleByIncidentAngleAndIndices -IncidentAngleInDegrees 30 -IndexOfRefraction1 1 -IndexOfRefraction2 1.33 -As "radians"
```

计算光从空气（n=1）以30度入射角进入水（n=1.33）时的折射角。

### Example 2

```powershell
Get-RefractionAngleByIncidentAngleAndIndices 45 1 1.5
```

当光从空气（n=1）以45度入射角射入玻璃（n=1.5）时，计算折射角。

## Related Links

- [Get-RefractionAngleByIncidentAngleAndIndices on GitHub](https://github.com/genXdev/genXdev)
