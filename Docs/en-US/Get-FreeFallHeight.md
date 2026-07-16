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
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | The time duration of the fall in seconds |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | The terminal velocity in meters per second (default: 53 m/s for human) |
| `-As` | String | — | — | 2 | — | The unit for the output height |

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
