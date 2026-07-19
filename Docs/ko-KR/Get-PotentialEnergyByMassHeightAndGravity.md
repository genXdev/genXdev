# Get-PotentialEnergyByMassHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 중력 퍼텐셜 에너지를 계산합니다.

## Description

PE = m g h를 사용합니다.

## Syntax

```powershell
Get-PotentialEnergyByMassHeightAndGravity [-MassInKilograms] <double> [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 질량 (kg) |
| `-HeightInMeters` | Double | ✅ | — | 1 | `0` | Height in meters |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 중력 (m/s²) (기본값: 9.81) |
| `-As` | String | — | — | 3 | — | 줄 |

## Examples

### Example 1

```powershell
Get-PotentialEnergyByMassHeightAndGravity -MassInKilograms 10 -HeightInMeters 5 -As "calories"
```

10kg 질량이 5미터 높이에 있을 때의 중력 위치 에너지를 계산하고, 결과를 칼로리 단위로 출력합니다.

### Example 2

```powershell
Get-PotentialEnergyByMassHeightAndGravity 5 10
```

위치 매개변수를 사용하여 위치 에너지를 계산하는 방법을 보여줍니다.

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
