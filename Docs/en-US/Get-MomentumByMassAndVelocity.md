# Get-MomentumByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates linear momentum.

## Description

Uses p = m v.

## Syntax

```powershell
Get-MomentumByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Mass in kg |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Velocity in m/s |
| `-As` | String | — | — | 2 | — | Output unit for momentum |

## Related Links

- [Get-MomentumByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
