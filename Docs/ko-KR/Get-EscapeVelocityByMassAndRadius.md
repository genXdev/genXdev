# Get-EscapeVelocityByMassAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 탈출 속도를 계산합니다.

## Description

v = sqrt(2 G M / r)를 사용합니다.

## Syntax

```powershell
Get-EscapeVelocityByMassAndRadius [-MassInKilograms] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 체질량 (kg) |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | 반경 (미터) |
| `-As` | String | — | — | 2 | — | 속도 출력 단위 |

## Examples

### Example 1

```powershell
Get-EscapeVelocityByMassAndRadius -MassInKilograms 5.972e24 -RadiusInMeters 6371000 -As "km/h"
```

지구의 질량과 반지름을 가진 천체의 탈출 속도를 계산합니다.

### Example 2

```powershell
Get-EscapeVelocityByMassAndRadius 1e26 10000000
```

기본 m/s 단위를 사용하여 탈출 속도를 계산합니다.

## Related Links

- [Get-EscapeVelocityByMassAndRadius on GitHub](https://github.com/genXdev/genXdev)
