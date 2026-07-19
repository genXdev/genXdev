# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates the distance fallen during free fall for a given time duration.

## Description

Calculates the distance fallen during free fall using a numerical method that accounts for air resistance and terminal velocity.

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

## Examples

### Example 1

```powershell
Get-FreeFallDistance -DurationInSeconds 10 -TerminalVelocityInMetersPerSecond 53 -As "feet"
```

Calculates the distance fallen in 10 seconds in feet.

### Example 2

```powershell
Get-FreeFallDistance 5
```

Calculates the distance in 5 seconds in meters.

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
