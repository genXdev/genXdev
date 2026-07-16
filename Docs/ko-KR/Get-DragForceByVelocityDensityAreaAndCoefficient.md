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
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | 속도 (m/s) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | kg/m³ 단위의 유체 밀도 |
| `-AreaInSquareMeters` | Double | ✅ | — | 2 | `0` | 단면적 (m²) |
| `-Coefficient` | Double | ✅ | — | 3 | `0` | 항력 계수 |
| `-As` | String | — | — | 4 | — | 뉴턴 (N) |

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
