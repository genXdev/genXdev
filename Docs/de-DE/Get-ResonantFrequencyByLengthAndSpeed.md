# Get-ResonantFrequencyByLengthAndSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die Resonanzfrequenz für ein geschlossenes Rohr.

## Description

Verwendet f = v / (4 L) für die Grundfrequenz.

## Syntax

```powershell
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-SpeedInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]

Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LengthInMeters` | Double | ✅ | — | 0 | `0` | Länge in Metern |
| `-SpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Wellengeschwindigkeit in m/s *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Das Medium *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Hz |

## Examples

### Example 1

```powershell
Get-ResonantFrequencyByLengthAndSpeed -LengthInMeters 0.5 -Medium "air" -As "kilohertz"
```

Berechnet die Resonanzfrequenz für ein 0,5 Meter langes Rohr in Luft, Ausgabe in Kilohertz.

### Example 2

```powershell
Get-ResonantFrequencyByLengthAndSpeed 1 -SpeedInMetersPerSecond 343
```

Berechnet die Resonanzfrequenz für ein 1 Meter langes Rohr mit einer Wellengeschwindigkeit von 343 m/s.

## Related Links

- [Get-ResonantFrequencyByLengthAndSpeed on GitHub](https://github.com/genXdev/genXdev)
