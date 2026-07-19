# Get-RefractionAngleByIncidentAngleAndIndices

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> スネルの法則を用いて屈折角を計算します。

## Description

θ2 = arcsin((n1 / n2) sin θ1) を使用します。

## Syntax

```powershell
Get-RefractionAngleByIncidentAngleAndIndices [-IncidentAngleInDegrees] <double> [-IndexOfRefraction1] <double> [-IndexOfRefraction2] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-IncidentAngleInDegrees` | Double | ✅ | — | 0 | `0` | 入射角（度） |
| `-IndexOfRefraction1` | Double | ✅ | — | 1 | `0` | 最初の媒質の屈折率 |
| `-IndexOfRefraction2` | Double | ✅ | — | 2 | `0` | 第二媒質の屈折率 |
| `-As` | String | — | — | 3 | — | 角度の出力単位 |

## Examples

### Example 1

```powershell
Get-RefractionAngleByIncidentAngleAndIndices -IncidentAngleInDegrees 30 -IndexOfRefraction1 1 -IndexOfRefraction2 1.33 -As "radians"
```

空気（n=1）から水（n=1.33）に光が30度の入射角で入射するときの屈折角を計算します。

### Example 2

```powershell
Get-RefractionAngleByIncidentAngleAndIndices 45 1 1.5
```

光が空気（屈折率1）からガラス（屈折率1.5）へ入射角45度で進むときの屈折角を計算します。

## Related Links

- [Get-RefractionAngleByIncidentAngleAndIndices on GitHub](https://github.com/genXdev/genXdev)
