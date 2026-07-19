# Get-DragForceByVelocityDensityAreaAndCoefficient

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 抗力の計算を行います。

## Description

F = 1/2 C ρ A v² という式を使用します。

## Syntax

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient [-VelocityInMetersPerSecond] <double> [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [-Coefficient] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 速度（m/s） |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | 流体密度（kg/m³） |
| `-AreaInSquareMeters` | Double | ✅ | — | 2 | `0` | 断面積（m²） |
| `-Coefficient` | Double | ✅ | — | 3 | `0` | 抗力係数 |
| `-As` | String | — | — | 4 | — | 力の出力単位 |

## Examples

### Example 1

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient -VelocityInMetersPerSecond 10 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 1 -Coefficient 0.5 -As "poundforce"
```

速度10 m/s、空気密度1.225 kg/m³、面積1 m²、係数0.5を用いて抗力（単位：ポンド重）を計算します。

### Example 2

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient 20 1.225 2 0.3
```

位置パラメータを使用して抗力を計算：速度20 m/s、密度1.225 kg/m³、面積2 m²、係数0.3。

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
