# Get-SoundTravelDistanceByTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Entfernung, die Schall in einer bestimmten Zeit zurücklegt.

## Description

Verwendet die Formel Strecke = Geschwindigkeit * Zeit, mit der Standard-Schallgeschwindigkeit in Luft.

## Syntax

```powershell
Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | Die Zeit in Sekunden |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | Schallgeschwindigkeit in m/s (Standard: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Das Medium, durch das sich Schall ausbreitet *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Die Einheit für die Ausgabeentfernung |

## Examples

### Example 1

```powershell
Get-SoundTravelDistanceByTime -TimeInSeconds 5 -Medium "water" -As "kilometers"
```

Berechnet, wie weit Schall in 5 Sekunden im Wasser zurücklegt, und wandelt das Ergebnis in Kilometer um.

### Example 2

```powershell
Get-SoundTravelDistanceByTime 10 -SpeedOfSoundInMetersPerSecond 1480
```

Berechnet die Entfernung unter Verwendung einer spezifischen Schallgeschwindigkeit.

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
