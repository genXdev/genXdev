# Get-SoundTravelDistanceByTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a distância que o som percorre em um determinado tempo.

## Description

Usa a fórmula distância = velocidade * tempo, com a velocidade padrão do som no ar.

## Syntax

```powershell
Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | O tempo em segundos |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | Velocidade do som em m/s (padrão: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | O meio através do qual o som viaja *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | A unidade para a distância de saída |

## Examples

### Example 1

```powershell
Get-SoundTravelDistanceByTime -TimeInSeconds 5 -Medium "water" -As "kilometers"
```

Calcula a distância que o som percorre na água em 5 segundos e converte o resultado para quilômetros.

### Example 2

```powershell
Get-SoundTravelDistanceByTime 10 -SpeedOfSoundInMetersPerSecond 1480
```

Calcula a distância usando uma velocidade específica do som.

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
