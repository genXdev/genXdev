# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la distancia de caída durante la caída libre para un período de tiempo dado.

## Description

Calcula la distancia caída durante la caída libre utilizando un método numérico que tiene en cuenta la resistencia del aire y la velocidad terminal.

## Syntax

```powershell
Get-FreeFallDistance [-DurationInSeconds] <double> [[-TerminalVelocityInMetersPerSecond] <double>] [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | La duración de la caída en segundos |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | La velocidad terminal en metros por segundo (predeterminado: 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | La aceleración debida a la gravedad en m/s² (predeterminado: 9,81) |
| `-As` | String | — | — | 3 | — | La unidad para la distancia de salida |

## Examples

### Example 1

```powershell
Get-FreeFallDistance -DurationInSeconds 10 -TerminalVelocityInMetersPerSecond 53 -As "feet"
```

Calcula la distancia caída en 10 segundos en pies.

### Example 2

```powershell
Get-FreeFallDistance 5
```

Calcula la distancia en 5 segundos en metros.

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
