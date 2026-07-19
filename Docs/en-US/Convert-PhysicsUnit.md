# Convert-PhysicsUnit

> **Module:** GenXdev.Helpers.Physics | **Type:** Function | **Aliases:** —

## Synopsis

> Converts a value from one physics unit to another within the same category.

## Description

This function converts physical quantities between compatible units in categories
like length, time, speed, etc. It infers the category from the units and throws
an error for incompatible conversions.

## Syntax

```powershell
Convert-PhysicsUnit -Value <Double> -FromUnit <String> -ToUnit <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Value` | Double | ✅ | — | 0 | — | The numerical value to convert |
| `-FromUnit` | String | ✅ | — | 1 | — | The unit of the input value |
| `-ToUnit` | String | ✅ | — | 2 | — | The desired output unit |

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

Converts 10 seconds to minutes using positional parameters.

## Outputs

- `Double`

## Related Links

- [Convert-PhysicsUnit on GitHub](https://github.com/genXdev/genXdev)
