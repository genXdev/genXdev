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
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | 떨어지는 높이 (미터) |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | 종단 속도(초당 미터 단위, 기본값: 인간의 경우 53 m/s) |
| `-As` | String | — | — | 2 | — | 출력 시간의 단위 |

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
