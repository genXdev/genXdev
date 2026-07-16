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
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | 落下の時間（秒） |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | メートル毎秒での終端速度（デフォルト: 53） |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | 重力加速度（m/s²）、デフォルト値：9.81 |
| `-As` | String | — | — | 3 | — | 出力距離の単位 |

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
