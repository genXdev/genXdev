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
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | The time duration of the fall in seconds |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | The terminal velocity in meters per second (default: 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | The acceleration due to gravity in m/s² (default: 9.81) |
| `-As` | String | — | — | 3 | — | The unit for the output distance |

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
