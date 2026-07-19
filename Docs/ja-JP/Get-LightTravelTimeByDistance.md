# Get-LightTravelTimeByDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 光がある距離を移動するのにかかる時間を計算します。

## Description

t = d / c を使用。c は媒質に依存する。

## Syntax

```powershell
Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [[-SpeedOfLightInMetersPerSecond] <double>] [[-As] <string>] [<CommonParameters>]

Get-LightTravelTimeByDistance [-DistanceInMeters] <double> [-Medium] <string> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | メートル単位の距離 |
| `-SpeedOfLightInMetersPerSecond` | Double | — | — | 1 | `0` | 真空中の光速 (m/s) (デフォルト: 299792458) *(Parameter set: )* |
| `-Medium` | String | ✅ | — | 1 | — | 光が伝わる媒体 *(Parameter set: )* |
| `-As` | String | — | — | 2 | — | 時間の出力単位 |

## Examples

### Example 1

```powershell
Get-LightTravelTimeByDistance -DistanceInMeters 149597870700 -Medium "water" -As "minutes"
```

水中を光が太陽までの距離を進むのにかかる時間を分で計算します。

### Example 2

```powershell
Get-LightTravelTimeByDistance 300000000 -SpeedOfLightInMetersPerSecond 225000000
```

光が225000000 m/sで300000000メートル進む時間を計算します。

## Related Links

- [Get-LightTravelTimeByDistance on GitHub](https://github.com/genXdev/genXdev)
