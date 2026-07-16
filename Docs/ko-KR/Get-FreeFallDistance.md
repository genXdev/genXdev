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
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | 낙하 시간(초) |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | 초당 미터 단위의 종단 속도 (기본값: 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | m/s² 단위의 중력 가속도 (기본값: 9.81) |
| `-As` | String | — | — | 3 | — | 출력 거리의 단위 |

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
