# Get-TerminalVelocityByMassGravityDensityAndArea

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la velocidad terminal.

## Description

Se utiliza v = sqrt(2 m g / (ρ A C)).

## Syntax

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea [-MassInKilograms] <double> [[-GravityInMetersPerSecondSquared] <double>] [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [[-DragCoefficient] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masa en kg |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 1 | `0` | Gravedad en m/s² (predeterminado: 9.81) |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 2 | `0` | Densidad del fluido en kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 3 | `0` | Sección transversal en m² |
| `-DragCoefficient` | Double | — | — | 4 | `0` | Coeficiente de arrastre (por defecto: 0.5) |
| `-As` | String | — | — | 5 | — | Unidad de salida para la velocidad |

## Examples

### Example 1

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea -MassInKilograms 80 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 0.7 -DragCoefficient 1.0 -As "mph"
```

Calcula la velocidad terminal para una masa de 80 kg en aire con un coeficiente de arrastre de 1.0, dando el resultado en mph.

### Example 2

```powershell
Get-TerminalVelocityByMassGravityDensityAndArea 70 1.225 0.8 0.8
```

Utiliza parámetros posicionales para calcular la velocidad terminal.

## Related Links

- [Get-TerminalVelocityByMassGravityDensityAndArea on GitHub](https://github.com/genXdev/genXdev)
