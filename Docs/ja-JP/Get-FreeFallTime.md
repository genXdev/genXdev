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
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | 落下高さ（メートル） |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | 終端速度（メートル毎秒、デフォルト：人間の場合53 m/s） |
| `-As` | String | — | — | 2 | — | 出力時間の単位 |

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
