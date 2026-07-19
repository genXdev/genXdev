# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算给定时间内在自由落体期间下落的距离。

## Description

采用一种考虑空气阻力和终端速度的数值方法来计算自由落体过程中的下落距离。

## Syntax

```powershell
Get-FreeFallDistance [-DurationInSeconds] <double> [[-TerminalVelocityInMetersPerSecond] <double>] [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | 下降持续的时间（秒） |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | 以米每秒为单位的终端速度（默认值：53） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 加速度，单位为 m/s²（默认值：9.81） |
| `-As` | String | — | — | 3 | — | 输出距离的单位 |

## Examples

### Example 1

```powershell
Get-FreeFallDistance -DurationInSeconds 10 -TerminalVelocityInMetersPerSecond 53 -As "feet"
```

在10秒内坠落的距离（以英尺计算）

### Example 2

```powershell
Get-FreeFallDistance 5
```

5秒内以米为单位的距离计算

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
