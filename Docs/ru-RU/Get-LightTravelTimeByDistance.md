# Get-LightTravelTimeByDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Рассчитывает время, за которое свет проходит расстояние.

## Description

Используется t = d / c, где c зависит от среды.

## Syntax

```powershell
Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [[-SpeedOfLightInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | Расстояние в метрах |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | Скорость света в м/с (по умолчанию: 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | Среда, через которую распространяется свет *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | Единица измерения времени |

## Examples

### Example 1

```powershell
Get-LightTravelTimeByDistance -DistanceInMeters 149597870700 -Medium "water" -As "minutes"
```

Вычисляет время, за которое свет проходит расстояние до Солнца через воду, в минутах.

### Example 2

```powershell
Get-LightTravelTimeByDistance 300000000 -SpeedOfLightInMetersPerSecond 225000000
```

Вычисляет время, за которое свет преодолевает 300000000 метров при скорости 225000000 м/с.

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
