# Get-TerminalVelocityByMassGravityDensityAndArea

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 종단 속도를 계산합니다.

## Description

v = sqrt(2 m g / (ρ A C))를 사용합니다.

## Syntax

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea [-MassInKilograms] <double> [[-GravityInMetersPerSecondSquared] <double>] [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [[-DragCoefficient] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 질량 (kg) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | 중력 (m/s²) (기본값: 9.81) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | kg/m³ 단위의 유체 밀도 |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | 단면적 (m²) |
| `-DragCoefficient` | Double | — | — | 4 | `0` | 항력 계수 (기본값: 0.5) |
| `-As` | String | — | — | 5 | — | 속도 출력 단위 |

## Examples

### Example 1

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea -MassInKilograms 80 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 0.7 -DragCoefficient 1.0 -As "mph"
```

질량 80kg, 항력 계수 1.0인 물체가 공기 중에서 종단 속도를 계산하여 mph 단위로 출력합니다.

### Example 2

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea 70 1.225 0.8 0.8
```

위치 매개변수를 사용하여 종단 속도를 계산합니다.

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
