# Get-TerminalVelocityByMassGravityDensityAndArea

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a velocidade terminal.

## Description

Usa v = sqrt(2 m g / (ρ A C)).

## Syntax

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea [-MassInKilograms] <double> [[-GravityInMetersPerSecondSquared] <double>] [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [[-DragCoefficient] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Massa em kg |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Gravidade em m/s² (padrão: 9,81) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | Densidade do fluido em kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | Área da seção transversal em m² |
| `-DragCoefficient` | Double | — | — | 4 | `0` | Coeficiente de arrasto (padrão: 0.5) |
| `-As` | String | — | — | 5 | — | Output unit for velocity: meters per second (m/s) |

## Examples

### Example 1

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea -MassInKilograms 80 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 0.7 -DragCoefficient 1.0 -As "mph"
```

Calcula a velocidade terminal para uma massa de 80 kg no ar com um coeficiente de arrasto de 1,0, exibindo o resultado em mph.

### Example 2

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea 70 1.225 0.8 0.8
```

Usa parâmetros posicionais para calcular a velocidade terminal.

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
