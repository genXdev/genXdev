# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la hauteur de chute lors de la chute libre pour une durée donnée.

## Description

Calcule la distance de chute libre en utilisant une méthode numérique qui prend en compte la résistance de l'air et la vitesse terminale.

## Syntax

```powershell
Get-FreeFallHeight [-DurationInSeconds] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | La durée de la chute en secondes |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | La vitesse terminale en mètres par seconde (par défaut : 53 m/s pour un humain) |
| `-As` | String | — | — | 2 | — | The unit for the output height |

## Examples

### Example 1

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -TerminalVelocityInMs 53
```

Calcule la hauteur de chute en 10 secondes avec la vitesse terminale humaine par défaut.

### Example 2

```powershell
Get-FreeFallHeight 5
```

Calcule la hauteur de chute en 5 secondes en utilisant un paramètre positionnel et une vitesse terminale par défaut.

### Example 3

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -As "feet"
```

Calcule la hauteur tombée en 10 secondes et renvoie le résultat en pieds.

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
