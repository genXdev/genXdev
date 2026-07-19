# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算物体在自由落体过程中下落给定高度所需的时间。

## Description

使用数值方法计算物体下落指定高度所需的时间，该方法考虑了空气阻力和终端速度。通过小时间步长精确模拟具有真实终端速度约束的物体下落物理过程。

## Syntax

```powershell
Get-FreeFallTime [-HeightInMeters] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | 下落高度（米） |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | 终端速度（米/秒，默认值：人类为 53 米/秒） |
| `-As` | String | — | — | 2 | — | 输出时间的单位 |

## Examples

### Example 1

```powershell
Get-FreeFallTime -HeightInMeters 100 -TerminalVelocityInMs 53
```

计算以默认人体终端速度下落100米所需的时间。

### Example 2

```powershell
Get-FreeFallTime 50
```

使用位置参数和默认终端速度计算下落50米所需的时间。

### Example 3

```powershell
Get-FreeFallTime -HeightInMeters 100 -As "minutes"
```

4.52

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
