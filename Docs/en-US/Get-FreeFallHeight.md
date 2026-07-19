# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates the height fallen during free fall for a given time duration.

## Description

Calculates the distance fallen during free fall using a numerical method that accounts for air resistance and terminal velocity.

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

## Examples

### Example 1

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -TerminalVelocityInMs 53
```

Calculates the height fallen in 10 seconds with default human terminal velocity.

### Example 2

```powershell
Get-FreeFallHeight 5
```

Calculates the height fallen in 5 seconds using positional parameter and default terminal velocity.

### Example 3

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -As "feet"
```

Calculates the height fallen in 10 seconds and returns the result in feet.

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
