# Get-OrbitalVelocityByRadiusAndMass

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 軌道速度を計算します。

## Description

v = sqrt(G M / r) を使用します。

## Syntax

```powershell
Get-OrbitalVelocityByRadiusAndMass [-RadiusInMeters] <double> [-CentralMassInKilograms] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RadiusInMeters` | Double | ✅ | — | 0 | `0` | メートル単位の軌道半径 |
| `-CentralMassInKilograms` | Double | ✅ | — | 1 | `0` | 中心の質量 (kg) |
| `-As` | String | — | — | 2 | — | 速度の出力単位 |

## Examples

### Example 1

```powershell
Get-OrbitalVelocityByRadiusAndMass -RadiusInMeters 6371000 -CentralMassInKilograms 5.972e24 -As "km/h"
```

デモンストレーションのために地球の質量と半径を使用します。

### Example 2

```powershell
Get-OrbitalVelocityByRadiusAndMass 10000000 1e26
```

デフォルトのm/s単位での簡単な計算。

## Related Links

- [Get-OrbitalVelocityByRadiusAndMass on GitHub](https://github.com/genXdev/genXdev)
