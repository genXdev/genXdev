# Get-TerminalVelocityByMassGravityDensityAndArea

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 終端速度を計算します。

## Description

v = sqrt(2 m g / (ρ A C)) を使用します。

## Syntax

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea [-MassInKilograms] <double> [[-GravityInMetersPerSecondSquared] <double>] [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [[-DragCoefficient] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 質量（kg） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | 重力加速度（m/s²）：デフォルトは9.81 |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | 流体密度（kg/m³） |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | 断面積（m²） |
| `-DragCoefficient` | Double | — | — | 4 | `0` | 抗力係数（デフォルト: 0.5） |
| `-As` | String | — | — | 5 | — | 速度の出力単位 |

## Examples

### Example 1

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea -MassInKilograms 80 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 0.7 -DragCoefficient 1.0 -As "mph"
```

空気中の質量80kg、抗力係数1.0の物体の終端速度をmphで計算します。

### Example 2

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea 70 1.225 0.8 0.8
```

位置パラメータを使用して終端速度を計算します。

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
