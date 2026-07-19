# Get-MomentumByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula o momento linear.

## Description

Usa p = m v.

## Syntax

```powershell
Get-MomentumByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Massa em kg |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Velocidade em m/s |
| `-As` | String | — | — | 2 | — | The SI unit of momentum is the kilogram meter per second (kg·m/s). |

## Related Links

- [Get-MomentumByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
