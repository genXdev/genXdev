# Get-BuoyantForceByDisplacedVolumeAndDensity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-BuoyantForceByDisplacedVolumeAndDensity [-DisplacedVolumeInCubicMeters] <double> [-FluidDensityInKilogramsPerCubicMeter] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DisplacedVolumeInCubicMeters` | Double | ✅ | — | 0 | `0` | 変位体積（m³） |
| `-FluidDensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | 流体密度（kg/m³） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 重力加速度（m/s²）：デフォルトは9.81 |
| `-As` | String | — | — | 3 | — | 力の出力単位 |

## Related Links

- [Get-BuoyantForceByDisplacedVolumeAndDensity on GitHub](https://github.com/genXdev/genXdev)
