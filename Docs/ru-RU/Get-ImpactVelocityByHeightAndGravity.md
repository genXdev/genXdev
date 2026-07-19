# Get-ImpactVelocityByHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет скорость удара по высоте.

## Description

Используется v = sqrt(2 g h) без учета сопротивления воздуха.

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

## Examples

### Example 1

```powershell
Get-ImpactVelocityByHeightAndGravity -HeightInMeters 100 -As "km/h"
```

Рассчитывает скорость удара при падении с высоты 100 метров и выводит результат в км/ч.

### Example 2

```powershell
Get-ImpactVelocityByHeightAndGravity 50
```

Рассчитывает скорость удара при падении с высоты 50 метров, используя единицы по умолчанию.

## Related Links

- [Get-ImpactVelocityByHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
