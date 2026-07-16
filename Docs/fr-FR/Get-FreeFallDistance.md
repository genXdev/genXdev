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
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | La durée de la chute en secondes |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | La vitesse terminale en mètres par seconde (par défaut : 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Accélération due à la gravité en m/s² (par défaut : 9,81) |
| `-As` | String | — | — | 3 | — | L'unité pour la distance de sortie |

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
