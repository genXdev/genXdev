# Get-OrbitalVelocityByRadiusAndMass

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 궤도 속도를 계산합니다.

## Description

v = sqrt(G M / r)를 사용하세요.

## Syntax

```powershell
Get-OrbitalVelocityByRadiusAndMass [-RadiusInMeters] <double> [-CentralMassInKilograms] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RadiusInMeters` | Double | ✅ | — | 0 | `0` | 궤도 반경 (미터 단위) |
| `-CentralMassInKilograms` | Double | ✅ | — | 1 | `0` | 중심 질량 (kg) |
| `-As` | String | — | — | 2 | — | 속도 출력 단위 |

## Examples

### Example 1

```powershell
Get-OrbitalVelocityByRadiusAndMass -RadiusInMeters 6371000 -CentralMassInKilograms 5.972e24 -As "km/h"
```

시연을 위해 지구의 질량과 반지름을 사용합니다.

### Example 2

```powershell
Get-OrbitalVelocityByRadiusAndMass 10000000 1e26
```

m/s 기본 출력값을 사용한 간단한 계산.

## Related Links

- [Get-OrbitalVelocityByRadiusAndMass on GitHub](https://github.com/genXdev/genXdev)
