# Get-PotentialEnergyByMassHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算重力势能。

## Description

使用 PE = m g h。

## Syntax

```powershell
Get-PotentialEnergyByMassHeightAndGravity [-MassInKilograms] <double> [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 质量，单位千克 |
| `-HeightInMeters` | Double | ✅ | — | 1 | `0` | 以米为单位的高度 |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 重力，单位 m/s²（默认值：9.81） |
| `-As` | String | — | — | 3 | — | 能源输出单位 |

## Examples

### Example 1

```powershell
Get-PotentialEnergyByMassHeightAndGravity -MassInKilograms 10 -HeightInMeters 5 -As "calories"
```

Gravitational potential energy = mgh = 10 kg * 9.8 m/s² * 5 m = 490 J. 1 cal = 4.184 J, so 490 J / 4.184 J/cal ≈ 117.1 cal.

### Example 2

```powershell
Get-PotentialEnergyByMassHeightAndGravity 5 10
```

演示如何使用位置参数计算势能。

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
