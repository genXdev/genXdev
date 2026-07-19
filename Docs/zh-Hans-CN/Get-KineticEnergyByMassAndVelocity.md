# Get-KineticEnergyByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算动能。

## Description

使用 KE = 1/2 m v²。

## Syntax

```powershell
Get-KineticEnergyByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 质量，单位千克 |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | 速度（米/秒） |
| `-As` | String | — | — | 2 | — | 能源输出单位 |

## Examples

### Example 1

```powershell
Get-KineticEnergyByMassAndVelocity -MassInKilograms 10 -VelocityInMetersPerSecond 5 -As "calories"
```

Kinetic energy = 0.5 * mass * velocity^2 = 0.5 * 10 kg * (5 m/s)^2 = 125 J. 1 cal = 4.184 J, so energy in calories = 125 / 4.184 ≈ 29.88 cal.

### Example 2

```powershell
Get-KineticEnergyByMassAndVelocity 5 10
```

使用位置参数计算一个5kg物体以10 m/s速度运动时的动能。

## Related Links

- [Get-KineticEnergyByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
