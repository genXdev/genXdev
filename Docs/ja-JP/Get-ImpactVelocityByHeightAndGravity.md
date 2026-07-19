# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 高さから衝突速度を計算します。

## Description

空気抵抗を無視して、v = sqrt(2 g h) を使用します。

## Syntax

```powershell
Get-ImpactVelocityByHeightAndGravity [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | 身長（メートル） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | 重力の単位はm/s²。デフォルトは9.81です。 |
| `-As` | String | — | — | 2 | — | 速度の出力単位。デフォルトは 'm/s' です。 |

## Examples

### Example 1

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As "km/h"
```

100メートル落下の衝突速度を計算し、時速キロメートルで出力します。

### Example 2

```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

デフォルト単位を使用して50メートル落下の衝突速度を計算します。

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
