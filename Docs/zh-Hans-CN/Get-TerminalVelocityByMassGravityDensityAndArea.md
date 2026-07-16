# Get-TerminalVelocityByMassGravityDensityAndArea

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
