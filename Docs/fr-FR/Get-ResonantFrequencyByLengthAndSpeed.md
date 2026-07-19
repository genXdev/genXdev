# Get-ResonantFrequencyByLengthAndSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la fréquence de résonance pour un tuyau fermé.

## Description

Utilise f = v / (4 L) pour la fréquence fondamentale.

## Syntax

```powershell
Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-SpeedInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]

Get-ResonantFrequencyByLengthAndSpeed [-LengthInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LengthInMeters` | Double | ✅ | — | 0 | `0` | Longueur en mètres |
| `-SpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Vitesse des ondes en m/s *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Le medium *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Unité de sortie pour la fréquence |

## Examples

### Example 1

```powershell
Get-ResonantFrequencyByLengthAndSpeed -LengthInMeters 0.5 -Medium "air" -As "kilohertz"
```

Calcule la fréquence de résonance pour un tuyau de 0,5 mètre dans l'air, sortie en kilohertz.

### Example 2

```powershell
Get-ResonantFrequencyByLengthAndSpeed 1 -SpeedInMetersPerSecond 343
```

Calcule la fréquence de résonance pour un tuyau de 1 mètre avec une vitesse d'onde de 343 m/s.

## Related Links

- [Get-ResonantFrequencyByLengthAndSpeed on GitHub](https://github.com/genXdev/genXdev)
