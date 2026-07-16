# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
