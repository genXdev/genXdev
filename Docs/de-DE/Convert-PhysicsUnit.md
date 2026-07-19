# Convert-PhysicsUnit

> **Module:** GenXdev.Helpers.Physics | **Type:** Function | **Aliases:** —

## Synopsis

> Converts a value from one physics unit to another within the same category.

## Description

Diese Funktion konvertiert physikalische Größen zwischen kompatiblen Einheiten in Kategorien wie Länge, Zeit, Geschwindigkeit usw. Sie leitet die Kategorie aus den Einheiten ab und gibt einen Fehler für inkompatible Konvertierungen aus.

## Syntax

```powershell
Convert-PhysicsUnit -Value <Double> -FromUnit <String> -ToUnit <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Value` | Double | ✅ | — | 0 | — | The numerical value to convert |
| `-FromUnit` | String | ✅ | — | 1 | — | Die Einheit des Eingabewerts |
| `-ToUnit` | String | ✅ | — | 2 | — | Die gewünschte Ausgabeeinheit |

## Examples

### Convert-PhysicsUnit -Value 100 -FromUnit "meters" -ToUnit "feet"

```powershell
Convert-PhysicsUnit -Value 100 -FromUnit "meters" -ToUnit "feet"
```

328.084 feet

### Convert-PhysicsUnit 10 "seconds" "minutes"

```powershell
Convert-PhysicsUnit 10 "seconds" "minutes"
```

#!/bin/bash
seconds=10
minutes=$(echo "scale=2; $seconds / 60" | bc)
echo "$seconds seconds = $minutes minutes"

## Outputs

- `Double`

## Related Links

- [Convert-PhysicsUnit on GitHub](https://github.com/genXdev/genXdev)
