# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la distance de chute en chute libre pour une durée donnée.

## Description

Calcule la distance de chute libre en utilisant une méthode numérique qui prend en compte la résistance de l'air et la vitesse terminale.

## Syntax

```powershell
Get-FreeFallDistance [-DurationInSeconds] <double> [[-TerminalVelocityInMetersPerSecond] <double>] [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | La durée de la chute en secondes |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | La vitesse terminale en mètres par seconde (par défaut : 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Accélération due à la gravité en m/s² (par défaut : 9,81) |
| `-As` | String | — | — | 3 | — | L'unité pour la distance de sortie |

## Examples

### Example 1

```powershell
Get-FreeFallDistance -DurationInSeconds 10 -TerminalVelocityInMetersPerSecond 53 -As "feet"
```

Calcule la distance parcourue en chute libre en 10 secondes, en pieds.

### Example 2

```powershell
Get-FreeFallDistance 5
```

Calcule la distance en 5 secondes en mètres.

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
