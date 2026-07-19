# Get-DragForceByVelocityDensityAreaAndCoefficient

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算阻力。

## Description

使用 F = 1/2 C ρ A v²。

## Syntax

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient [-VelocityInMetersPerSecond] <double> [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [-Coefficient] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 速度（米/秒） |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | 流体密度（kg/m³） |
| `-AreaInSquareMeters` | Double | ✅ | — | 2 | `0` | 横截面积（m²） |
| `-Coefficient` | Double | ✅ | — | 3 | `0` | Drag coefficient |
| `-As` | String | — | — | 4 | — | 力的输出单位 |

## Examples

### Example 1

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient -VelocityInMetersPerSecond 10 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 1 -Coefficient 0.5 -As "poundforce"
```

计算结果：阻力为 3.425 磅力

### Example 2

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient 20 1.225 2 0.3
```

根据位置参数计算阻力：速度20 m/s，密度1.225 kg/m³，面积2 m²，阻力系数0.3。

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
