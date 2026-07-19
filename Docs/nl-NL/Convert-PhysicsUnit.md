# Convert-PhysicsUnit

> **Module:** GenXdev.Helpers.Physics | **Type:** Function | **Aliases:** —

## Synopsis

> Converts a value from one physics unit to another within the same category.

## Description

Deze functie converteert fysieke grootheden tussen compatibele eenheden in categorieën zoals lengte, tijd, snelheid, enz. Het leidt de categorie af uit de eenheden en genereert een fout voor incompatibele conversies.

## Syntax

```powershell
Convert-PhysicsUnit -Value <Double> -FromUnit <String> -ToUnit <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Value` | Double | ✅ | — | 0 | — | De numerieke waarde om te converteren |
| `-FromUnit` | String | ✅ | — | 1 | — | De eenheid van de invoerwaarde |
| `-ToUnit` | String | ✅ | — | 2 | — | De gewenste uitvoereenheid |

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

Converteert 10 seconden naar minuten met behulp van positionele parameters.

## Outputs

- `Double`

## Related Links

- [Convert-PhysicsUnit on GitHub](https://github.com/genXdev/genXdev)
