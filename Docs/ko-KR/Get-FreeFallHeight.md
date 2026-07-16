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
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | 낙하 시간(초) |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | 종단 속도(초당 미터 단위, 기본값: 인간의 경우 53 m/s) |
| `-As` | String | — | — | 2 | — | 출력 높이의 단위 |

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
