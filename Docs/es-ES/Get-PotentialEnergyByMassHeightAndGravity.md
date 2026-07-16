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
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Masa en kg |
| `-HeightInMeters` | Double | ✅ | — | 1 | `0` | Altura en metros |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravedad en m/s² (predeterminado: 9.81) |
| `-As` | String | — | — | 3 | — | Unidad de salida para la energía |

## Related Links

- [Get-PotentialEnergyByMassHeightAndGravity on GitHub](https://github.com/genXdev/genXdev)
