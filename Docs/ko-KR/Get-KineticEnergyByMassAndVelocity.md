# Get-KineticEnergyByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 운동 에너지를 계산합니다.

## Description

KE = 1/2 m v² 공식을 사용합니다.

## Syntax

```powershell
Get-KineticEnergyByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 질량 (kg) |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | 속도 (m/s) |
| `-As` | String | — | — | 2 | — | 줄 |

## Examples

### Example 1

```powershell
Get-KineticEnergyByMassAndVelocity -MassInKilograms 10 -VelocityInMetersPerSecond 5 -As "calories"
```

10kg 질량이 5m/s로 움직일 때의 운동 에너지를 계산하여 칼로리로 출력합니다.

### Example 2

```powershell
Get-KineticEnergyByMassAndVelocity 5 10
```

위치 매개변수를 사용하여 5kg 질량이 10m/s로 움직일 때의 운동 에너지를 계산합니다.

## Related Links

- [Get-KineticEnergyByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
