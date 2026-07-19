# Get-MomentumByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算线性动量。

## Description

Uses p = mv.

## Syntax

```powershell
Get-MomentumByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 质量，单位千克 |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | 速度（米/秒） |
| `-As` | String | — | — | 2 | — | Output unit for momentum |

## Related Links

- [Get-MomentumByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
