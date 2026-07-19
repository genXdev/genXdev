# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de tijd die een object nodig heeft om een bepaalde hoogte te vallen tijdens vrije val.

## Description

Berekent de tijdsduur die een object nodig heeft om een bepaalde hoogte te vallen, gebruikmakend van een numerieke methode die rekening houdt met luchtweerstand en eindsnelheid. De berekening gebruikt kleine tijdstappen om de fysica van vallende objecten met realistische eindsnelheidsbeperkingen nauwkeurig te modelleren.

## Syntax

```powershell
Get-FreeFallTime [-HeightInMeters] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | De hoogte om in meters te vallen |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | De eindsnelheid in meter per seconde (standaard: 53 m/s voor een mens) |
| `-As` | String | — | — | 2 | — | De eenheid voor de uitvoertijd |

## Examples

### Example 1

```powershell
Get-FreeFallTime -HeightInMeters 100 -TerminalVelocityInMs 53
```

Berekent de tijd die nodig is om 100 meter te vallen met standaard menselijke eindsnelheid.

### Example 2

```powershell
Get-FreeFallTime 50
```

Berekent de tijd die nodig is om 50 meter te vallen met behulp van een positionele parameter en standaard eindsnelheid.

### Example 3

```powershell
Get-FreeFallTime -HeightInMeters 100 -As "minutes"
```

Berekent de benodigde tijd om 100 meter te vallen en geeft het resultaat in minuten.

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
