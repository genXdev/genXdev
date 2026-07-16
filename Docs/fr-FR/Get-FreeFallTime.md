# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-FreeFallTime [-HeightInMeters] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | La hauteur de chute en mètres |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | La vitesse terminale en mètres par seconde (par défaut : 53 m/s pour un humain) |
| `-As` | String | — | — | 2 | — | L'unité pour le temps de sortie |

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
