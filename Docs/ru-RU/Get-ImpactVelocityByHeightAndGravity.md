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
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Высота в метрах |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Гравитация в м/с². По умолчанию 9.81. |
| `-As` | String | — | — | 2 | — | Единица измерения скорости. По умолчанию 'м/с'. |

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
