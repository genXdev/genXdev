# Get-PotentialEnergyByMassHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 重力ポテンシャルエネルギーを計算します。

## Description

PE = m g h を使用。

## Syntax

```powershell
Get-PotentialEnergyByMassHeightAndGravity [-MassInKilograms] <double> [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 質量（kg） |
| `-HeightInMeters` | Double | ✅ | — | 1 | `0` | 身長（メートル） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 重力加速度（m/s²）：デフォルトは9.81 |
| `-As` | String | — | — | 3 | — | エネルギー出力単位 |

## Examples

### Example 1

```powershell
Get-PotentialEnergyByMassHeightAndGravity -MassInKilograms 10 -HeightInMeters 5 -As "calories"
```

質量10kgの物体が高さ5mにあるときの重力ポテンシャルエネルギーを計算し、結果をカロリーで出力します。

### Example 2

```powershell
Get-PotentialEnergyByMassHeightAndGravity 5 10
```

位置パラメータを使用して位置エネルギーを計算する方法を示します。

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
