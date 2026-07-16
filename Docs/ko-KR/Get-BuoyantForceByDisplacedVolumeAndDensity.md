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
| `-DisplacedVolumeInCubicMeters` | Double | ✅ | — | 0 | `0` | 변위 체적 (m³) |
| `-FluidDensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | kg/m³ 단위의 유체 밀도 |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 중력 (m/s²) (기본값: 9.81) |
| `-As` | String | — | — | 3 | — | 뉴턴 (N) |

## Related Links

- [Get-BuoyantForceByDisplacedVolumeAndDensity on GitHub](https://github.com/genXdev/genXdev)
