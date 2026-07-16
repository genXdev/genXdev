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
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | 落下の時間（秒） |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | 終端速度（メートル毎秒、デフォルト：人間の場合53 m/s） |
| `-As` | String | — | — | 2 | — | 出力高さの単位 |

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
