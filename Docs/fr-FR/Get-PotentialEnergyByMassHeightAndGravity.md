# Get-PotentialEnergyByMassHeightAndGravity

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
