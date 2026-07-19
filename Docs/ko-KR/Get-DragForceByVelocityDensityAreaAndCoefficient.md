# Get-DragForceByVelocityDensityAreaAndCoefficient

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 항력을 계산합니다.

## Description

F = 1/2 C ρ A v² 공식을 사용합니다.

## Syntax

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient [-VelocityInMetersPerSecond] <double> [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [-Coefficient] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 속도 (m/s) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | kg/m³ 단위의 유체 밀도 |
| `-AreaInSquareMeters` | Double | ✅ | — | 2 | `0` | 단면적 (m²) |
| `-Coefficient` | Double | ✅ | — | 3 | `0` | 항력 계수 |
| `-As` | String | — | — | 4 | — | 뉴턴 (N) |

## Examples

### Example 1

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient -VelocityInMetersPerSecond 10 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 1 -Coefficient 0.5 -As "poundforce"
```

속도 10m/s, 공기 밀도 1.225kg/m³, 면적 1m², 계수 0.5를 사용하여 항력을 계산하고, 파운드힘으로 출력합니다.

### Example 2

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient 20 1.225 2 0.3
```

위치 매개변수를 사용하여 항력을 계산: 속도 20m/s, 밀도 1.225kg/m³, 면적 2m², 계수 0.3.

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
