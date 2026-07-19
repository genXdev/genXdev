# Get-MomentumByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 선형 운동량을 계산합니다.

## Description

p = m v를 사용합니다.

## Syntax

```powershell
Get-MomentumByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 질량 (kg) |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | 속도 (m/s) |
| `-As` | String | — | — | 2 | — | kg·m/s |

## Related Links

- [Get-MomentumByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
