# Convert-PhysicsUnit

> **Module:** GenXdev.Helpers.Physics | **Type:** Function | **Aliases:** —

## Synopsis

> Converts a value from one physics unit to another within the same category.

## Description

이 함수는 길이, 시간, 속도 등의 범주에서 호환 가능한 단위 간 물리량을 변환합니다. 단위로부터 범주를 추론하며, 호환되지 않는 변환의 경우 오류를 발생시킵니다.

## Syntax

```powershell
Convert-PhysicsUnit -Value <Double> -FromUnit <String> -ToUnit <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Value` | Double | ✅ | — | 0 | — | 변환할 숫자 값 |
| `-FromUnit` | String | ✅ | — | 1 | — | 입력 값의 단위 |
| `-ToUnit` | String | ✅ | — | 2 | — | 원하는 출력 단위 |

## Examples

### Convert-PhysicsUnit -Value 100 -FromUnit "meters" -ToUnit "feet"

```powershell
Convert-PhysicsUnit -Value 100 -FromUnit "meters" -ToUnit "feet"
```

100 meters is approximately 328.084 feet.

### Convert-PhysicsUnit 10 "seconds" "minutes"

```powershell
Convert-PhysicsUnit 10 "seconds" "minutes"
```

minutes=$(echo 'scale=2; $1 / 60' | bc)

## Outputs

- `Double`

## Related Links

- [Convert-PhysicsUnit on GitHub](https://github.com/genXdev/genXdev)
