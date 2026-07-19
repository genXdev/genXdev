# Get-PotentialEnergyByMassHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berechnet die potentielle Gravitationsenergie.

## Description

Verwendet PE = m g h.

## Syntax

```powershell
Get-PotentialEnergyByMassHeightAndGravity [-MassInKilograms] <double> [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masse in kg |
| `-HeightInMeters` | Double | ✅ | — | 1 | `0` | Höhe in Metern |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Schwerkraft in m/s² (Standard: 9,81) |
| `-As` | String | — | — | 3 | — | joule |

## Examples

### Example 1

```powershell
Get-PotentialEnergyByMassHeightAndGravity -MassInKilograms 10 -HeightInMeters 5 -As "calories"
```

Berechnet die Gravitationspotentialenergie für eine 10-kg-Masse in einer Höhe von 5 Metern und gibt das Ergebnis in Kalorien aus.

### Example 2

```powershell
Get-PotentialEnergyByMassHeightAndGravity 5 10
```

Demonstriert die Verwendung von Positionsparametern zur Berechnung potenzieller Energie.

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
