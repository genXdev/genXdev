# Get-PotentialEnergyByMassHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-PotentialEnergyByMassHeightAndGravity [-MassInKilograms] <double> [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Масса в кг |
| `-HeightInMeters` | Double | ✅ | — | 1 | `0` | Высота в метрах |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Сила тяжести в м/с² (по умолчанию: 9,81) |
| `-As` | String | — | — | 3 | — | Output unit for energy |

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
