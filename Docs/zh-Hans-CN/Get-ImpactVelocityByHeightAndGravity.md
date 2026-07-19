# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 根据高度计算撞击速度。

## Description

使用 v = sqrt(2 g h) 忽略空气阻力。

## Syntax

```powershell
Get-ImpactVelocityByHeightAndGravity [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | 以米为单位的高度 |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | 重力（米/秒²）。默认值9.81。 |
| `-As` | String | — | — | 2 | — | Output unit for velocity. Default 'm/s'. |

## Examples

### Example 1

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As "km/h"
```

The impact velocity for a 100 meter fall, assuming no air resistance, is approximately 158.8 km/h.

### Example 2

```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

计算50米下落时的冲击速度（使用默认单位）。

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
