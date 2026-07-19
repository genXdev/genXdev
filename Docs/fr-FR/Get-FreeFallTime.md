# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule le temps nécessaire pour qu'un objet tombe d'une hauteur donnée en chute libre.

## Description

Calcule la durée nécessaire pour qu'un objet tombe d'une hauteur spécifiée en utilisant une méthode numérique qui prend en compte la résistance de l'air et la vitesse terminale. Le calcul utilise de petits pas de temps pour modéliser avec précision la physique des objets en chute avec des contraintes réalistes de vitesse terminale.

## Syntax

```powershell
Get-FreeFallTime [-HeightInMeters] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | La hauteur de chute en mètres |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | La vitesse terminale en mètres par seconde (par défaut : 53 m/s pour un humain) |
| `-As` | String | — | — | 2 | — | L'unité pour le temps de sortie |

## Examples

### Example 1

```powershell
Get-FreeFallTime -HeightInMeters 100 -TerminalVelocityInMs 53
```

Calcule le temps nécessaire pour tomber de 100 mètres avec la vitesse terminale humaine par défaut.

### Example 2

```powershell
Get-FreeFallTime 50
```

Calcule le temps nécessaire pour tomber de 50 mètres en utilisant le paramètre de position et la vitesse terminale par défaut.

### Example 3

```powershell
Get-FreeFallTime -HeightInMeters 100 -As "minutes"
```

Calcule le temps nécessaire pour chuter de 100 mètres et retourne le résultat en minutes.

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
