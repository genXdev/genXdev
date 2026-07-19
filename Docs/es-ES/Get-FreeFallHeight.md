# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la altura caída durante la caída libre para un tiempo dado.

## Description

Calcula la distancia caída durante la caída libre utilizando un método numérico que tiene en cuenta la resistencia del aire y la velocidad terminal.

## Syntax

```powershell
Get-FreeFallHeight [-DurationInSeconds] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | La duración de la caída en segundos |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | La velocidad terminal en metros por segundo (valor predeterminado: 53 m/s para humanos) |
| `-As` | String | — | — | 2 | — | La unidad para la altura de salida |

## Examples

### Example 1

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -TerminalVelocityInMs 53
```

Calcula la altura caída en 10 segundos con la velocidad terminal humana predeterminada.

### Example 2

```powershell
Get-FreeFallHeight 5
```

Calcula la altura caída en 5 segundos usando el parámetro posicional y la velocidad terminal predeterminada.

### Example 3

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -As "feet"
```

Calcula la altura caída en 10 segundos y devuelve el resultado en pies.

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
