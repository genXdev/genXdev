# Get-SoundTravelDistanceByTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет расстояние, которое проходит звук за заданное время.

## Description

Использует формулу расстояние = скорость * время, с установленной по умолчанию скоростью звука в воздухе.

## Syntax

```powershell
Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [[-SpeedOfSoundInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-SoundTravelDistanceByTime [-TimeInSeconds] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-TimeInSeconds` | Double | ✅ | — | 0 | `0` | Время в секундах |
| `-SpeedOfSoundInMetersPerSecond` | Double | — | — | 1 | `0` | Скорость звука в м/с (по умолчанию: 343) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | The medium through which sound travels *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Единица измерения выходного расстояния |

## Examples

### Example 1

```powershell
Get-SoundTravelDistanceByTime -TimeInSeconds 5 -Medium "water" -As "kilometers"
```

Вычисляет, как далеко звук распространяется в воде за 5 секунд, и преобразует результат в километры.

### Example 2

```powershell
Get-SoundTravelDistanceByTime 10 -SpeedOfSoundInMetersPerSecond 1480
```

Вычисляет расстояние, используя заданную скорость звука.

## Related Links

- [Get-SoundTravelDistanceByTime on GitHub](https://github.com/genXdev/genXdev)
