# Get-MomentumByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет линейный импульс.

## Description

Используется p = m v.

## Syntax

```powershell
Get-MomentumByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Масса в кг |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Скорость в м/с |
| `-As` | String | — | — | 2 | — | kg·m/s |

## Related Links

- [Get-MomentumByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
