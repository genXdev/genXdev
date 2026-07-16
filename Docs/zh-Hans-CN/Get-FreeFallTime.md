# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
