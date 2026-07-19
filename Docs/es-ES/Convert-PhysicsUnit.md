# Convert-PhysicsUnit

> **Module:** GenXdev.Helpers.Physics | **Type:** Function | **Aliases:** —

## Synopsis

> Converts a value from one physics unit to another within the same category.

## Description

Esta función convierte cantidades físicas entre unidades compatibles en categorías como longitud, tiempo, velocidad, etc. Infiere la categoría a partir de las unidades y lanza un error para conversiones incompatibles.

## Syntax

```powershell
Convert-PhysicsUnit -Value <Double> -FromUnit <String> -ToUnit <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Value` | Double | ✅ | — | 0 | — | The numerical value to convert |
| `-FromUnit` | String | ✅ | — | 1 | — | La unidad del valor de entrada |
| `-ToUnit` | String | ✅ | — | 2 | — | La unidad de salida deseada |

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

Convierte 10 segundos a minutos usando parámetros posicionales.

## Outputs

- `Double`

## Related Links

- [Convert-PhysicsUnit on GitHub](https://github.com/genXdev/genXdev)
