# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
