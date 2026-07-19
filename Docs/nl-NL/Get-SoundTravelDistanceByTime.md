# Get-SoundTravelDistanceByTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de afstand die geluid aflegt in een bepaalde tijd.

## Description

Gebruikt de formule afstand = snelheid * tijd, met als standaard snelheid van geluid in lucht.

## Syntax

```powershell
Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | De tijd in seconden |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | Geluidssnelheid in m/s (standaard: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Het medium waardoor geluid zich voortplant *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | De eenheid voor de uitvoerafstand |

## Examples

### Example 1

```powershell
Get-SoundTravelDistanceByTime -TimeInSeconds 5 -Medium "water" -As "kilometers"
```

Berekent hoe ver geluid zich in water verplaatst gedurende 5 seconden en converteert het resultaat naar kilometers.

### Example 2

```powershell
Get-SoundTravelDistanceByTime 10 -SpeedOfSoundInMetersPerSecond 1480
```

Berekent de afstand met behulp van een specifieke geluidssnelheid.

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
