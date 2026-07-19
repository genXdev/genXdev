# Get-KineticEnergyByMassAndVelocity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule l'énergie cinétique.

## Description

Utilise KE = 1/2 m v².

## Syntax

```powershell
Get-KineticEnergyByMassAndVelocity [-MassInKilograms] <double> [-VelocityInMetersPerSecond] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masse en kg |
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 1 | `0` | Vitesse en m/s |
| `-As` | String | — | — | 2 | — | Unité de sortie pour l'énergie |

## Examples

### Example 1

```powershell
Get-KineticEnergyByMassAndVelocity -MassInKilograms 10 -VelocityInMetersPerSecond 5 -As "calories"
```

Calcule l'énergie cinétique pour une masse de 10 kg se déplaçant à 5 m/s et donne le résultat en calories.

### Example 2

```powershell
Get-KineticEnergyByMassAndVelocity 5 10
```

Calcule l'énergie cinétique d'une masse de 5 kg se déplaçant à 10 m/s en utilisant des paramètres positionnels.

## Related Links

- [Get-KineticEnergyByMassAndVelocity on GitHub](https://github.com/genXdev/genXdev)
