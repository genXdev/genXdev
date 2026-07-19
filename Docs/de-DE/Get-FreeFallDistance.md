# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Fallstrecke während des freien Falls für eine gegebene Zeitdauer.

## Description

Berechnet die Fallstrecke während des freien Falls unter Verwendung einer numerischen Methode, die Luftwiderstand und Endgeschwindigkeit berücksichtigt.

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

## Examples

### Example 1

```powershell
Get-FreeFallDistance -DurationInSeconds 10 -TerminalVelocityInMetersPerSecond 53 -As "feet"
```

Berechnet die Fallstrecke in 10 Sekunden in Fuß.

### Example 2

```powershell
Get-FreeFallDistance 5
```

Berechnet die Distanz in 5 Sekunden in Metern.

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
