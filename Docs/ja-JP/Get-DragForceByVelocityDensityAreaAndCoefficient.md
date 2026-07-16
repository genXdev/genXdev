# Get-DragForceByVelocityDensityAreaAndCoefficient

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
