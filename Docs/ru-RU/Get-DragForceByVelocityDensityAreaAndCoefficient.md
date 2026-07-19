# Get-DragForceByVelocityDensityAreaAndCoefficient

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет силу лобового сопротивления.

## Description

Используется F = 1/2 C ρ A v².

## Syntax

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient [-VelocityInMetersPerSecond] <double> [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [-Coefficient] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Скорость в м/с |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | Fluid density in kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 2 | `0` | Площадь поперечного сечения в м² |
| `-Coefficient` | Double | ✅ | — | 3 | `0` | Коэффициент лобового сопротивления |
| `-As` | String | — | — | 4 | — | Единица измерения силы |

## Examples

### Example 1

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient -VelocityInMetersPerSecond 10 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 1 -Coefficient 0.5 -As "poundforce"
```

Рассчитывает силу лобового сопротивления, используя скорость 10 м/с, плотность воздуха 1,225 кг/м³, площадь 1 м² и коэффициент 0,5, с выводом в фунт-силах.

### Example 2

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient 20 1.225 2 0.3
```

Вычисление силы лобового сопротивления с использованием позиционных параметров: скорость 20 м/с, плотность 1,225 кг/м³, площадь 2 м², коэффициент 0,3.

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
