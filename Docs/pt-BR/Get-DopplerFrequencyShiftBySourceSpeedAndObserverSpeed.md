# Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a frequência deslocada por efeito Doppler.

## Description

Usa f' = f * (v + vo) / (v - vs), velocidades positivas em direção uma à outra.

## Syntax

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed [-OriginalFrequencyInHertz] <double> [-SourceSpeedInMetersPerSecond] <double> [-ObserverSpeedInMetersPerSecond] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-OriginalFrequencyInHertz` | Double | ✅ | — | 0 | `0` | Frequência original em Hz |
| `-SourceSpeedInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Velocidade da fonte em m/s (positiva em direção ao observador) |
| `-ObserverSpeedInMetersPerSecond` | Double | ✅ | — | 2 | `0` | Velocidade do observador em m/s (positiva em direção à fonte) |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 3 | `0` | Velocidade do som em m/s (padrão: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 3 | — | O meio *(Parameter set: )* |
| `-As` | String | — | — | 4 | — | Output unit for frequency |

## Examples

### Example 1

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed -OriginalFrequencyInHertz 440 -SourceSpeedInMetersPerSecond 10 -ObserverSpeedInMetersPerSecond 5 -Medium "water" -As "kilohertz"
```

Calcula a frequência deslocada por Doppler para um tom de 440 Hz com fonte se movendo a 10 m/s em direção ao observador, observador se movendo a 5 m/s em direção à fonte, em meio aquático, saída em quilohertz.

### Example 2

```powershell
Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed 440 10 0 -SpeedOfSoundInMetersPerSecond 1480
```

Calcula a frequência deslocada por Doppler para um tom de 440 Hz com a fonte se movendo a 10 m/s, observador estacionário, velocidade do som de 1480 m/s.

## Related Links

- [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed on GitHub](https://github.com/genXdev/genXdev)
