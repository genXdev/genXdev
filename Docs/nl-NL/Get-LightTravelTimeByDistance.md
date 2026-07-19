# Get-LightTravelTimeByDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de tijd die licht nodig heeft om een afstand af te leggen.

## Description

Gebruikt t = d / c, waarbij c afhankelijk is van het medium.

## Syntax

```powershell
Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [[-SpeedOfLightInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Afstand in meters |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | Snelheid van het licht in m/s (standaard: 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Het medium waardoor licht reist *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Output eenheid voor tijd |

## Examples

### Example 1

```powershell
Get-LightTravelTimeByDistance -DistanceInMeters 149597870700 -Medium "water" -As "minutes"
```

Berekent de tijd voor licht om de afstand naar de zon door water af te leggen, in minuten.

### Example 2

```powershell
Get-LightTravelTimeByDistance 300000000 -SpeedOfLightInMetersPerSecond 225000000
```

Berekent de tijd die licht nodig heeft om 300000000 meter af te leggen bij 225000000 m/s.

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
