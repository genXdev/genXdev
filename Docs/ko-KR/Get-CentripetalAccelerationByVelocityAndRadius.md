# Get-CentripetalAccelerationByVelocityAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 구심 가속도를 계산합니다.

## Description

a = v² / r 공식을 사용합니다.

## Syntax

```powershell
Get-CentripetalAccelerationByVelocityAndRadius [-VelocityInMetersPerSecond] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 속도 (m/s) |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | 반경 (미터) |
| `-As` | String | — | — | 2 | — | 가속도 출력 단위 |

## Examples

### Example 1

```powershell
Get-CentripetalAccelerationByVelocityAndRadius -VelocityInMetersPerSecond 10 -RadiusInMeters 5 -As "g"
```

속도 10 m/s, 반지름 5 m에 대한 구심 가속도를 계산하여 g 단위로 출력합니다.

### Example 2

```powershell
Get-CentripetalAccelerationByVelocityAndRadius 20 10
```

속도 20m/s와 반지름 10m에 대해 위치 매개변수를 사용하여 구심 가속도를 계산합니다.

## Related Links

- [Get-CentripetalAccelerationByVelocityAndRadius on GitHub](https://github.com/genXdev/genXdev)
