# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
