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
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 질량 (kg) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | 중력 (m/s²) (기본값: 9.81) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | kg/m³ 단위의 유체 밀도 |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | 단면적 (m²) |
| `-DragCoefficient` | Double | — | — | 4 | `0` | 항력 계수 (기본값: 0.5) |
| `-As` | String | — | — | 5 | — | 속도 출력 단위 |

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
