# Get-EscapeVelocityByMassAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисление второй космической скорости.

## Description

Используется v = sqrt(2 G M / r).

## Syntax

```powershell
Get-EscapeVelocityByMassAndRadius [-MassInKilograms] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Масса тела в кг |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Радиус в метрах |
| `-As` | String | — | — | 2 | — | Единица измерения скорости |

## Examples

### Example 1

```powershell
Get-EscapeVelocityByMassAndRadius -MassInKilograms 5.972e24 -RadiusInMeters 6371000 -As "km/h"
```

Вычисляет скорость убегания для тела с массой и радиусом Земли.

### Example 2

```powershell
Get-EscapeVelocityByMassAndRadius 1e26 10000000
```

Вычисляет скорость убегания, используя единицы м/с по умолчанию.

## Related Links

- [Get-EscapeVelocityByMassAndRadius on GitHub](https://github.com/genXdev/genXdev)
