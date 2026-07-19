# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula el tiempo necesario para que un objeto caiga una altura determinada durante la caída libre.

## Description

Calcula la duración del tiempo necesario para que un objeto caiga desde una altura especificada utilizando un método numérico que considera la resistencia del aire y la velocidad terminal. El cálculo utiliza pequeños intervalos de tiempo para modelar con precisión la física de objetos en caída con restricciones realistas de velocidad terminal.

## Syntax

```powershell
Get-FreeFallTime [-HeightInMeters] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Altura de caída en metros |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | La velocidad terminal en metros por segundo (valor predeterminado: 53 m/s para humanos) |
| `-As` | String | — | — | 2 | — | La unidad para el tiempo de salida |

## Examples

### Example 1

```powershell
Get-FreeFallTime -HeightInMeters 100 -TerminalVelocityInMs 53
```

Calcula el tiempo necesario para caer 100 metros con la velocidad terminal humana predeterminada.

### Example 2

```powershell
Get-FreeFallTime 50
```

Calcula el tiempo necesario para caer 50 metros usando parámetro posicional y velocidad terminal predeterminada.

### Example 3

```powershell
Get-FreeFallTime -HeightInMeters 100 -As "minutes"
```

Calcula el tiempo necesario para caer 100 metros y devuelve el resultado en minutos.

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
