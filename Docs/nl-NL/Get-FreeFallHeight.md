# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de afgelegde afstand tijdens vrije val voor een gegeven tijdsduur.

## Description

Berekent de afgelegde afstand tijdens vrije val met behulp van een numerieke methode die rekening houdt met luchtweerstand en eindsnelheid.

## Syntax

```powershell
Get-FreeFallHeight [-DurationInSeconds] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | De tijdsduur van de val in seconden |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | De eindsnelheid in meter per seconde (standaard: 53 m/s voor een mens) |
| `-As` | String | — | — | 2 | — | De eenheid voor de uitvoerhoogte |

## Examples

### Example 1

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -TerminalVelocityInMs 53
```

Berekent de gevallen afstand in 10 seconden met standaard menselijke eindsnelheid.

### Example 2

```powershell
Get-FreeFallHeight 5
```

Berekent de gevallen hoogte in 5 seconden met behulp van de positieparameter en standaard eindsnelheid.

### Example 3

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -As "feet"
```

Berekent de gevallen afstand in 10 seconden en geeft het resultaat in voet.

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
