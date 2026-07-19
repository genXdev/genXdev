# Get-EscapeVelocityByMassAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 脱出速度を計算します。

## Description

v = sqrt(2 G M / r) を使用します。

## Syntax

```powershell
Get-EscapeVelocityByMassAndRadius [-MassInKilograms] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | 体重（kg） |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | メートル単位の半径 |
| `-As` | String | — | — | 2 | — | 速度の出力単位 |

## Examples

### Example 1

```powershell
Get-EscapeVelocityByMassAndRadius -MassInKilograms 5.972e24 -RadiusInMeters 6371000 -As "km/h"
```

地球の質量と半径を持つ天体の脱出速度を計算します。

### Example 2

```powershell
Get-EscapeVelocityByMassAndRadius 1e26 10000000
```

デフォルトのm/s単位を使用して脱出速度を計算します。

## Related Links

- [Get-EscapeVelocityByMassAndRadius on GitHub](https://github.com/genXdev/genXdev)
