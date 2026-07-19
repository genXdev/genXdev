# Get-TerminalVelocityByMassGravityDensityAndArea

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算终端速度。

## Description

使用 v = sqrt(2 m g / (ρ A C))。

## Syntax

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea [-MassInKilograms] <double> [[-GravityInMetersPerSecondSquared] <double>] [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [[-DragCoefficient] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 质量，单位千克 |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | 重力，单位 m/s²（默认值：9.81） |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | 流体密度（kg/m³） |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | 横截面积（m²） |
| `-DragCoefficient` | Double | — | — | 4 | `0` | 阻力系数（默认值：0.5） |
| `-As` | String | — | — | 5 | — | Output unit for velocity |

## Examples

### Example 1

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea -MassInKilograms 80 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 0.7 -DragCoefficient 1.0 -As "mph"
```

The terminal velocity for an 80 kg mass in air with drag coefficient 1.0 is approximately 36.8 mph.

### Example 2

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea 70 1.225 0.8 0.8
```

使用位置参数计算终端速度。

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
