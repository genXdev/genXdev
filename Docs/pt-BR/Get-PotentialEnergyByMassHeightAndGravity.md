# Get-PotentialEnergyByMassHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a energia potencial gravitacional.

## Description

Usa PE = m g h.

## Syntax

```powershell
Get-PotentialEnergyByMassHeightAndGravity [-MassInKilograms] <double> [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Massa em kg |
| `-HeightInMeters` | Double | ✅ | — | 1 | `0` | Altura em metros |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravidade em m/s² (padrão: 9,81) |
| `-As` | String | — | — | 3 | — | Unidade de energia |

## Examples

### Example 1

```powershell
Get-PotentialEnergyByMassHeightAndGravity -MassInKilograms 10 -HeightInMeters 5 -As "calories"
```

Calcula a energia potencial gravitacional para uma massa de 10 kg a uma altura de 5 metros, exibindo o resultado em calorias.

### Example 2

```powershell
Get-PotentialEnergyByMassHeightAndGravity 5 10
```

Demonstra o uso de parâmetros posicionais para calcular energia potencial.

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
