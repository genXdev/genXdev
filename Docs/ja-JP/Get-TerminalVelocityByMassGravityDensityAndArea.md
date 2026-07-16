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
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 質量（kg） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | 重力加速度（m/s²）：デフォルトは9.81 |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | 流体密度（kg/m³） |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | 断面積（m²） |
| `-DragCoefficient` | Double | — | — | 4 | `0` | 抗力係数（デフォルト: 0.5） |
| `-As` | String | — | — | 5 | — | 速度の出力単位 |

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
