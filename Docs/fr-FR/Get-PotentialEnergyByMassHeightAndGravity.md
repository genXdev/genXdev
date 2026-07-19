# Get-PotentialEnergyByMassHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule l'énergie potentielle gravitationnelle.

## Description

Utilise PE = m g h.

## Syntax

```powershell
Get-PotentialEnergyByMassHeightAndGravity [-MassInKilograms] <double> [-HeightInMeters] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masse en kg |
| `-HeightInMeters` | Double | ✅ | — | 1 | `0` | Hauteur en mètres |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravité en m/s² (par défaut : 9.81) |
| `-As` | String | — | — | 3 | — | Unité de sortie pour l'énergie |

## Examples

### Example 1

```powershell
Get-PotentialEnergyByMassHeightAndGravity -MassInKilograms 10 -HeightInMeters 5 -As "calories"
```

Calcule l'énergie potentielle gravitationnelle pour une masse de 10 kg à une hauteur de 5 mètres, en affichant le résultat en calories.

### Example 2

```powershell
Get-PotentialEnergyByMassHeightAndGravity 5 10
```

Montre comment utiliser des paramètres positionnels pour calculer l'énergie potentielle.

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
