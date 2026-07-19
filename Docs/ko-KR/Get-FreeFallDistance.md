# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 주어진 시간 동안 자유 낙하 중 떨어진 거리를 계산합니다.

## Description

공기 저항과 종단 속도를 고려한 수치적 방법을 사용하여 자유 낙하 중 낙하 거리를 계산합니다.

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

## Examples

### Example 1

```powershell
Get-FreeFallDistance -DurationInSeconds 10 -TerminalVelocityInMetersPerSecond 53 -As "feet"
```

10초 동안 떨어진 거리를 피트 단위로 계산합니다.

### Example 2

```powershell
Get-FreeFallDistance 5
```

5초 동안 이동한 거리를 미터 단위로 계산합니다.

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
