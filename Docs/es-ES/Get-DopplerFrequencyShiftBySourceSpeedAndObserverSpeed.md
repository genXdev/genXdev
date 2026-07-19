# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la frecuencia desplazada por Doppler.

## Description

Utiliza f' = f * (v + vo) / (v - vs), velocidades positivas hacia el otro.

## Syntax

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | Frecuencia original en Hz |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Velocidad de la fuente en m/s (positiva hacia el observador) |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | Velocidad del observador en m/s (positiva hacia la fuente) |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | Velocidad del sonido en m/s (por defecto: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | El medio *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Unidad de salida para la frecuencia |

## Examples

### Example 1

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed -OriginalFrequencyInHertz 440 -SourceSpeedInMetersPerSecond 10 -ObserverSpeedInMetersPerSecond 5 -Medium "water" -As "kilohertz"
```

Calcula la frecuencia desplazada por Doppler para un tono de 440 Hz con la fuente moviéndose a 10 m/s hacia el observador, el observador moviéndose a 5 m/s hacia la fuente, en medio acuático, salida en kilohercios.

### Example 2

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed 440 10 0 -SpeedOfSoundInMetersPerSecond 1480
```

Calcula la frecuencia desplazada por Doppler para un tono de 440 Hz con una fuente que se mueve a 10 m/s, observador estacionario, velocidad del sonido 1480 m/s.

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
