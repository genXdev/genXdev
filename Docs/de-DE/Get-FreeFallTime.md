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
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | Die Höhe, um zu fallen (in Metern) |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | Die Endgeschwindigkeit in Metern pro Sekunde (Standard: 53 m/s für einen Menschen) |
| `-As` | String | — | — | 2 | — | Die Einheit für die Ausgabezeit |

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
