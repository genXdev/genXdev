# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates the time required for an object to fall a given height during free fall.

## Description

Calculates the time duration required for an object to fall a specified height using a numerical method that accounts for air resistance and terminal velocity. The calculation uses small time steps to accurately model the physics of falling objects with realistic terminal velocity constraints.

## Syntax

```powershell
Get-FreeFallTime [-HeightInMeters] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | The height to fall in meters |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | The terminal velocity in meters per second (default: 53 m/s for human) |
| `-As` | String | — | — | 2 | — | The unit for the output time |

## Examples

### Example 1

```powershell
Get-FreeFallTime -HeightInMeters 100 -TerminalVelocityInMs 53
```

Calculates the time required to fall 100 meters with default human terminal velocity.

### Example 2

```powershell
Get-FreeFallTime 50
```

Calculates the time required to fall 50 meters using positional parameter and default terminal velocity.

### Example 3

```powershell
Get-FreeFallTime -HeightInMeters 100 -As "minutes"
```

Calculates the time required to fall 100 meters and returns the result in minutes.

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
