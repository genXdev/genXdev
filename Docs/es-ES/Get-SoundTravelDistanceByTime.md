# Get-SoundTravelDistanceByTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la distancia que recorre el sonido en un tiempo dado.

## Description

Usa la fórmula distancia = velocidad * tiempo, con la velocidad predeterminada del sonido en el aire.

## Syntax

```powershell
Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | El tiempo en segundos |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | Velocidad del sonido en m/s (por defecto: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | The medium through which sound travels *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | La unidad para la distancia de salida |

## Examples

### Example 1

```powershell
Get-SoundTravelDistanceByTime -TimeInSeconds 5 -Medium "water" -As "kilometers"
```

Calcula qué tan lejos viaja el sonido en el agua durante 5 segundos y convierte el resultado a kilómetros.

### Example 2

```powershell
Get-SoundTravelDistanceByTime 10 -SpeedOfSoundInMetersPerSecond 1480
```

Calcula la distancia usando una velocidad específica del sonido.

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
