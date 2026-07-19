# Get-KineticEnergyByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 運動エネルギーを計算します。

## Description

運動エネルギーKE = 1/2 m v² を使用します。

## Syntax

```powershell
Get-KineticEnergyByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 質量（kg） |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | 速度（m/s） |
| `-As` | String | — | — | 2 | — | エネルギー出力単位 |

## Examples

### Example 1

```powershell
Get-KineticEnergyByMassAndVelocity -MassInKilograms 10 -VelocityInMetersPerSecond 5 -As "calories"
```

質量10kgの物体が5 m/sで移動するときの運動エネルギーを計算し、カロリーで出力します。

### Example 2

```powershell
Get-KineticEnergyByMassAndVelocity 5 10
```

位置パラメータを使用して、質量5kgの物体が10m/sで動くときの運動エネルギーを計算します。

## Related Links

- [Get-KineticEnergyByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
