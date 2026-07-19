# Get-LightTravelTimeByDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Zeit, die Licht benötigt, um eine Strecke zurückzulegen.

## Description

Verwendet t = d / c, wobei c vom Medium abhängt.

## Syntax

```powershell
Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [[-SpeedOfLightInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Entfernung in Metern |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | Lichtgeschwindigkeit in m/s (Standard: 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Das Medium, durch das Licht reist *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Ausgabeeinheit für Zeit |

## Examples

### Example 1

```powershell
Get-LightTravelTimeByDistance -DistanceInMeters 149597870700 -Medium "water" -As "minutes"
```

Berechnet die Zeit, die Licht benötigt, um die Entfernung zur Sonne durch Wasser zu reisen, in Minuten.

### Example 2

```powershell
Get-LightTravelTimeByDistance 300000000 -SpeedOfLightInMetersPerSecond 225000000
```

Berechnet die Zeit, die Licht benötigt, um 300000000 Meter bei 225000000 m/s zurückzulegen.

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
