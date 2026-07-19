# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 주어진 시간 동안 자유 낙하 시 떨어진 높이를 계산합니다.

## Description

공기 저항과 종단 속도를 고려한 수치적 방법을 사용하여 자유 낙하 중 낙하 거리를 계산합니다.

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

## Examples

### Example 1

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -TerminalVelocityInMs 53
```

기본 인간 종단속도를 사용하여 10초 동안 낙하한 높이를 계산합니다.

### Example 2

```powershell
Get-FreeFallHeight 5
```

5초 동안의 낙하 거리를 위치 매개변수와 기본 종단 속도를 사용하여 계산합니다.

### Example 3

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -As "feet"
```

10초 동안 낙하한 높이를 계산하여 결과를 피트 단위로 반환합니다.

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
