# Get-PotentialEnergyByMassHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la energía potencial gravitatoria.

## Description

Usa PE = m g h.

## Syntax

```powershell
Get-PotentialEnergyByMassHeightAndGravity [-MassInKilograms] <double> [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masa en kg |
| `-HeightInMeters` | Double | ✅ | — | 1 | `0` | Altura en metros |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravedad en m/s² (predeterminado: 9.81) |
| `-As` | String | — | — | 3 | — | Unidad de salida para la energía |

## Examples

### Example 1

```powershell
Get-PotentialEnergyByMassHeightAndGravity -MassInKilograms 10 -HeightInMeters 5 -As "calories"
```

Calcula la energía potencial gravitatoria para una masa de 10 kg a una altura de 5 metros, mostrando el resultado en calorías.

### Example 2

```powershell
Get-PotentialEnergyByMassHeightAndGravity 5 10
```

Demuestra el uso de parámetros posicionales para calcular la energía potencial.

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
