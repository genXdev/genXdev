# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
