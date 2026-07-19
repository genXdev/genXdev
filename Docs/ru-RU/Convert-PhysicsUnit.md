# Convert-PhysicsUnit

> **Module:** GenXdev.Helpers.Physics | **Type:** Function | **Aliases:** —

## Synopsis

> Converts a value from one physics unit to another within the same category.

## Description

Эта функция преобразует физические величины между совместимыми единицами в таких категориях, как длина, время, скорость и т.д. Она определяет категорию по единицам измерения и выдает ошибку для несовместимых преобразований.

## Syntax

```powershell
Convert-PhysicsUnit -Value <Double> -FromUnit <String> -ToUnit <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Value` | Double | ✅ | — | 0 | — | The numerical value to convert |
| `-FromUnit` | String | ✅ | — | 1 | — | The unit of the input value |
| `-ToUnit` | String | ✅ | — | 2 | — | Желаемая единица вывода |

## Examples

### Convert-PhysicsUnit -Value 100 -FromUnit "meters" -ToUnit "feet"

```powershell
Convert-PhysicsUnit -Value 100 -FromUnit "meters" -ToUnit "feet"
```

100 meters is approximately 328.084 feet

### Convert-PhysicsUnit 10 "seconds" "minutes"

```powershell
Convert-PhysicsUnit 10 "seconds" "minutes"
```

minutes=$(($1 / 60)); echo "$1 seconds is $minutes minute(s)"

## Outputs

- `Double`

## Related Links

- [Convert-PhysicsUnit on GitHub](https://github.com/genXdev/genXdev)
