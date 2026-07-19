# Convert-PhysicsUnit

> **Module:** GenXdev.Helpers.Physics | **Type:** Function | **Aliases:** —

## Synopsis

> Converte um valor de uma unidade física para outra dentro da mesma categoria.

## Description

Esta função converte quantidades físicas entre unidades compatíveis em categorias como comprimento, tempo, velocidade, etc. Ela infere a categoria a partir das unidades e gera um erro para conversões incompatíveis.

## Syntax

```powershell
Convert-PhysicsUnit -Value <Double> -FromUnit <String> -ToUnit <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Value` | Double | ✅ | — | 0 | — | O valor numérico a ser convertido |
| `-FromUnit` | String | ✅ | — | 1 | — | A unidade do valor de entrada |
| `-ToUnit` | String | ✅ | — | 2 | — | A unidade de saída desejada |

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

minutes=$(($1 / 60)); echo "$1 seconds is $minutes minute(s)"

## Outputs

- `Double`

## Related Links

- [Convert-PhysicsUnit on GitHub](https://github.com/genXdev/genXdev)
