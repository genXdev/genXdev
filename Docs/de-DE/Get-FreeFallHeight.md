# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Fallhöhe während des freien Falls für eine gegebene Zeitdauer.

## Description

Berechnet die Fallstrecke während des freien Falls unter Verwendung einer numerischen Methode, die Luftwiderstand und Endgeschwindigkeit berücksichtigt.

## Syntax

```powershell
Get-FreeFallHeight [-DurationInSeconds] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | Die Zeitdauer des Falls in Sekunden |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | Die Endgeschwindigkeit in Metern pro Sekunde (Standard: 53 m/s für einen Menschen) |
| `-As` | String | — | — | 2 | — | Die Einheit für die Ausgabehöhe |

## Examples

### Example 1

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -TerminalVelocityInMs 53
```

Berechnet die Fallhöhe in 10 Sekunden mit der standardmäßigen menschlichen Endgeschwindigkeit.

### Example 2

```powershell
Get-FreeFallHeight 5
```

Berechnet die in 5 Sekunden zurückgelegte Fallhöhe unter Verwendung des Positionsparameters und der standardmäßigen Endgeschwindigkeit.

### Example 3

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -As "feet"
```

Berechnet die in 10 Sekunden gefallene Höhe und gibt das Ergebnis in Fuß zurück.

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
