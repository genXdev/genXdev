# Get-KineticEnergyByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la energía cinética.

## Description

Usa KE = 1/2 m v².

## Syntax

```powershell
Get-KineticEnergyByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masa en kg |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Velocidad en m/s |
| `-As` | String | — | — | 2 | — | Unidad de salida para la energía |

## Examples

### Example 1

```powershell
Get-KineticEnergyByMassAndVelocity -MassInKilograms 10 -VelocityInMetersPerSecond 5 -As "calories"
```

Calcula la energía cinética para una masa de 10 kg que se mueve a 5 m/s y da el resultado en calorías.

### Example 2

```powershell
Get-KineticEnergyByMassAndVelocity 5 10
```

Calcula la energía cinética para una masa de 5 kg que se mueve a 10 m/s usando parámetros posicionales.

## Related Links

- [Get-KineticEnergyByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
