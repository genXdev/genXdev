# Convert-PhysicsUnit

> **Module:** GenXdev.Helpers.Physics | **Type:** Function | **Aliases:** —

## Synopsis

> Converts a value from one physics unit to another within the same category.

## Description

Cette fonction convertit des grandeurs physiques entre des unités compatibles dans des catégories comme la longueur, le temps, la vitesse, etc. Elle déduit la catégorie à partir des unités et génère une erreur pour les conversions incompatibles.

## Syntax

```powershell
Convert-PhysicsUnit -Value <Double> -FromUnit <String> -ToUnit <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Value` | Double | ✅ | — | 0 | — | La valeur numérique à convertir |
| `-FromUnit` | String | ✅ | — | 1 | — | L'unité de la valeur d'entrée |
| `-ToUnit` | String | ✅ | — | 2 | — | L'unité de sortie souhaitée |

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

#!/bin/bash
# Convert seconds to minutes using positional parameters
seconds=$1
minutes=$(echo "scale=2; $seconds / 60" | bc)
echo "$seconds seconds is equal to $minutes minutes"

## Outputs

- `Double`

## Related Links

- [Convert-PhysicsUnit on GitHub](https://github.com/genXdev/genXdev)
