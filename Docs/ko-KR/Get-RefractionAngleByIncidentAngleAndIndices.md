# Get-RefractionAngleByIncidentAngleAndIndices

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 스넬의 법칙을 사용하여 굴절각을 계산합니다.

## Description

θ2 = arcsin( (n1 / n2) sin θ1 )를 사용합니다.

## Syntax

```powershell
Get-RefractionAngleByIncidentAngleAndIndices [-IncidentAngleInDegrees] <double> [-IndexOfRefraction1] <double> [-IndexOfRefraction2] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-IncidentAngleInDegrees` | Double | ✅ | — | 0 | `0` | 입사각(도) |
| `-IndexOfRefraction1` | Double | ✅ | — | 1 | `0` | 첫 번째 매질의 굴절률 |
| `-IndexOfRefraction2` | Double | ✅ | — | 2 | `0` | 두 번째 매질의 굴절률 |
| `-As` | String | — | — | 3 | — | 각도 출력 단위 |

## Examples

### Example 1

```powershell
Get-RefractionAngleByIncidentAngleAndIndices -IncidentAngleInDegrees 30 -IndexOfRefraction1 1 -IndexOfRefraction2 1.33 -As "radians"
```

빛이 공기(n=1)에서 물(n=1.33)로 30도 입사각으로 통과할 때 굴절각을 계산합니다.

### Example 2

```powershell
Get-RefractionAngleByIncidentAngleAndIndices 45 1 1.5
```

빛이 공기(n=1)에서 유리(n=1.5)로 45도 입사각으로 들어갈 때 굴절각을 계산합니다.

## Related Links

- [Get-RefractionAngleByIncidentAngleAndIndices on GitHub](https://github.com/genXdev/genXdev)
