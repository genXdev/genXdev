# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 자유 낙하 중 물체가 주어진 높이를 떨어지는 데 필요한 시간을 계산합니다.

## Description

공기 저항과 종단 속도를 고려하여 물체가 특정 높이에서 떨어지는 데 필요한 시간을 수치적 방법으로 계산합니다. 이 계산은 종단 속도 제약 조건을 가진 실제 낙하 물체의 물리학을 정확히 모델링하기 위해 작은 시간 간격을 사용합니다.

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

## Examples

### Example 1

```powershell
Get-FreeFallTime -HeightInMeters 100 -TerminalVelocityInMs 53
```

기본 인간 종단 속도로 100미터를 낙하하는 데 필요한 시간을 계산합니다.

### Example 2

```powershell
Get-FreeFallTime 50
```

위치 매개변수와 기본 종단 속도를 사용하여 50미터 낙하에 필요한 시간을 계산합니다.

### Example 3

```powershell
Get-FreeFallTime -HeightInMeters 100 -As "minutes"
```

100미터를 떨어지는 데 걸리는 시간을 계산하여 결과를 분 단위로 반환합니다.

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
