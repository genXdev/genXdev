# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 높이에서 충돌 속도를 계산합니다.

## Description

공기 저항을 무시하고 v = sqrt(2 g h)를 사용합니다.

## Syntax

```powershell
Get-ImpactVelocityByHeightAndGravity [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Height in meters |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | 중력(m/s²). 기본값 9.81. |
| `-As` | String | — | — | 2 | — | Output unit for velocity. Default 'm/s'. |

## Examples

### Example 1

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As "km/h"
```

100미터 낙하에 대한 충돌 속도를 계산하여 km/h로 출력합니다.

### Example 2

```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

기본 단위를 사용하여 50미터 낙하에 대한 충격 속도를 계산합니다.

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
