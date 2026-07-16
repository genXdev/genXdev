# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-FreeFallHeight [-DurationInSeconds] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | La durée de la chute en secondes |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | La vitesse terminale en mètres par seconde (par défaut : 53 m/s pour un humain) |
| `-As` | String | — | — | 2 | — | The unit for the output height |

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
