# Get-KineticEnergyByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет кинетическую энергию.

## Description

Используется KE = 1/2 m v².

## Syntax

```powershell
Get-KineticEnergyByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Масса в кг |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Скорость в м/с |
| `-As` | String | — | — | 2 | — | Output unit for energy |

## Examples

### Example 1

```powershell
Get-KineticEnergyByMassAndVelocity -MassInKilograms 10 -VelocityInMetersPerSecond 5 -As "calories"
```

Вычисляет кинетическую энергию для массы 10 кг, движущейся со скоростью 5 м/с, и выводит в калориях.

### Example 2

```powershell
Get-KineticEnergyByMassAndVelocity 5 10
```

Вычисляет кинетическую энергию для массы 5 кг, движущейся со скоростью 10 м/с, используя позиционные параметры.

## Related Links

- [Get-KineticEnergyByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
