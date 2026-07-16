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
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | Die Zeitdauer des Falls in Sekunden |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | Die Endgeschwindigkeit in Metern pro Sekunde (Standard: 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Die Erdbeschleunigung in m/s² (Standard: 9,81) |
| `-As` | String | — | — | 3 | — | Die Einheit für die Ausgabeentfernung |

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
