# Get-TimeOfFlightByInitialVelocityAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula el tiempo de vuelo de un proyectil.

## Description

Usa T = (2 v sinθ) / g para el movimiento ideal.

## Syntax

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle [-InitialVelocityInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialVelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Velocidad inicial en m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Ángulo de lanzamiento en grados |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravedad en m/s² (predeterminado: 9.81) |
| `-As` | String | — | — | 3 | — | Unidad de salida para el tiempo |

## Examples

### Example 1

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle -InitialVelocityInMetersPerSecond 20 -AngleInDegrees 45 -As "minutes"
```

Calcula el tiempo de vuelo de un proyectil lanzado a 20 m/s a 45 grados, muestra el resultado en minutos.

### Example 2

```powershell
Get-TimeOfFlightByInitialVelocityAndAngle 30 30
```

Calcula el tiempo de vuelo de un proyectil lanzado a 30 m/s con un ángulo de 30 grados.

## Related Links

- [Get-TimeOfFlightByInitialVelocityAndAngle on GitHub](https://github.com/genXdev/genXdev)
