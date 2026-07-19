# Get-KineticEnergyByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula energia cinética.

## Description

Usa KE = 1/2 m v².

## Syntax

```powershell
Get-KineticEnergyByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Massa em kg |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Velocidade em m/s |
| `-As` | String | — | — | 2 | — | Unidade de energia |

## Examples

### Example 1

```powershell
Get-KineticEnergyByMassAndVelocity -MassInKilograms 10 -VelocityInMetersPerSecond 5 -As "calories"
```

Calcula a energia cinética para uma massa de 10 kg movendo-se a 5 m/s e exibe em calorias.

### Example 2

```powershell
Get-KineticEnergyByMassAndVelocity 5 10
```

Calcula a energia cinética para uma massa de 5kg movendo-se a 10 m/s usando parâmetros posicionais.

## Related Links

- [Get-KineticEnergyByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
