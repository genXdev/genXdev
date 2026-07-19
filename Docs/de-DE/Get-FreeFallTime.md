# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Zeit, die ein Objekt benötigt, um während des freien Falls eine bestimmte Höhe zu fallen.

## Description

Berechnet die Zeitdauer, die ein Objekt benötigt, um aus einer bestimmten Höhe zu fallen, unter Verwendung einer numerischen Methode, die Luftwiderstand und Endgeschwindigkeit berücksichtigt. Die Berechnung verwendet kleine Zeitschritte, um die Physik fallender Objekte mit realistischen Endgeschwindigkeitsbeschränkungen genau zu modellieren.

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

## Examples

### Example 1

```powershell
Get-FreeFallTime -HeightInMeters 100 -TerminalVelocityInMs 53
```

Berechnet die Zeit, die benötigt wird, um 100 Meter mit standardmäßiger menschlicher Endgeschwindigkeit zu fallen.

### Example 2

```powershell
Get-FreeFallTime 50
```

Berechnet die Zeit, die benötigt wird, um 50 Meter zu fallen, unter Verwendung des Positionsparameters und der standardmäßigen Endgeschwindigkeit.

### Example 3

```powershell
Get-FreeFallTime -HeightInMeters 100 -As "minutes"
```

Berechnet die Zeit, die benötigt wird, um 100 Meter zu fallen, und gibt das Ergebnis in Minuten aus.

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
