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
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | 以米为单位的高度 |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | 重力（米/秒²）。默认值9.81。 |
| `-As` | String | — | — | 2 | — | Output unit for velocity. Default 'm/s'. |

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
