# Convert-PhysicsUnit

> **Module:** GenXdev.Helpers.Physics | **Type:** Function | **Aliases:** —

## Synopsis

> 将一个值在同一类别内的不同物理单位之间进行转换。

## Description

此函数在长度、时间、速度等类别的兼容单位之间转换物理量。它根据单位推断类别，并在不兼容的转换时抛出错误。

## Syntax

```powershell
Convert-PhysicsUnit -Value <Double> -FromUnit <String> -ToUnit <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Value` | Double | ✅ | — | 0 | — | 要转换的数值 |
| `-FromUnit` | String | ✅ | — | 1 | — | 输入值的单位 |
| `-ToUnit` | String | ✅ | — | 2 | — | 期望的输出单位 |

## Examples

### Convert-PhysicsUnit -Value 100 -FromUnit "meters" -ToUnit "feet"

```powershell
Convert-PhysicsUnit -Value 100 -FromUnit "meters" -ToUnit "feet"
```

Converts 100 meters to feet.

### Convert-PhysicsUnit 10 "seconds" "minutes"

```powershell
Convert-PhysicsUnit 10 "seconds" "minutes"
```

10 seconds is equal to 0.166667 minutes.

## Outputs

- `Double`

## Related Links

- [Convert-PhysicsUnit on GitHub](https://github.com/genXdev/genXdev)
