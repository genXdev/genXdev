# Get-ProjectileRangeByInitialSpeedAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle [-InitialSpeedInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Velocidade inicial em m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Ângulo de lançamento em graus |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravidade em m/s² (padrão: 9,81) |
| `-As` | String | — | — | 3 | — | Unidade de saída para o intervalo |

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
