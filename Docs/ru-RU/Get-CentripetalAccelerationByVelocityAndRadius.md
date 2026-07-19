# Get-CentripetalAccelerationByVelocityAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет центростремительное ускорение.

## Description

Используется a = v² / r.

## Syntax

```powershell
Get-CentripetalAccelerationByVelocityAndRadius [-VelocityInMetersPerSecond] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Скорость в м/с |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Радиус в метрах |
| `-As` | String | — | — | 2 | — | Единица измерения ускорения |

## Examples

### Example 1

```powershell
Get-CentripetalAccelerationByVelocityAndRadius -VelocityInMetersPerSecond 10 -RadiusInMeters 5 -As "g"
```

Вычисляет центростремительное ускорение для скорости 10 м/с и радиуса 5 м, вывод в единицах g.

### Example 2

```powershell
Get-CentripetalAccelerationByVelocityAndRadius 20 10
```

Вычисляет центростремительное ускорение для скорости 20 м/с и радиуса 10 м с использованием позиционных параметров.

## Related Links

- [Get-CentripetalAccelerationByVelocityAndRadius on GitHub](https://github.com/genXdev/genXdev)
