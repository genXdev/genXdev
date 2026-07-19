# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de gevallen afstand tijdens vrije val voor een gegeven tijdsduur.

## Description

Berekent de afgelegde afstand tijdens vrije val met behulp van een numerieke methode die rekening houdt met luchtweerstand en eindsnelheid.

## Syntax

```powershell
Get-FreeFallDistance [-DurationInSeconds] <double> [[-TerminalVelocityInMetersPerSecond] <double>] [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | De tijdsduur van de val in seconden |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | De eindsnelheid in meter per seconde (standaard: 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | De versnelling door de zwaartekracht in m/s² (standaard: 9,81) |
| `-As` | String | — | — | 3 | — | De eenheid voor de uitvoerafstand |

## Examples

### Example 1

```powershell
Get-FreeFallDistance -DurationInSeconds 10 -TerminalVelocityInMetersPerSecond 53 -As "feet"
```

Berekent de afstand die in 10 seconden is gevallen in voet.

### Example 2

```powershell
Get-FreeFallDistance 5
```

Berekent de afstand in 5 seconden in meters.

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
