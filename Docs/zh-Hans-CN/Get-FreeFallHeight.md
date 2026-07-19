# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算给定时间内在自由落体过程中下落的距离。

## Description

采用一种考虑空气阻力和终端速度的数值方法来计算自由落体过程中的下落距离。

## Syntax

```powershell
Get-FreeFallHeight [-DurationInSeconds] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | 下降持续的时间（秒） |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | 终端速度（米/秒，默认值：人类为 53 米/秒） |
| `-As` | String | — | — | 2 | — | 输出高度的单位 |

## Examples

### Example 1

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -TerminalVelocityInMs 53
```

计算在默认人体终端速度下10秒内下落的高度。

### Example 2

```powershell
Get-FreeFallHeight 5
```

使用位置参数和默认终端速度计算5秒内下落的高度。

### Example 3

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -As "feet"
```

The distance fallen in 10 seconds under gravity (32 ft/s²) is calculated using d = 0.5 * g * t² = 0.5 * 32 * 100 = 1600 feet.

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
