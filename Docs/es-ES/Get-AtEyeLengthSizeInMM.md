# Get-AtEyeLengthSizeInMM

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula el tamaño aparente en mm de un objeto a la distancia del brazo.

## Description

Calcula el tamaño que un objeto parecería tener si se viera a la distancia del brazo extendido de un adulto promedio (aproximadamente 0.7 metros), dado su tamaño real y distancia. El cálculo utiliza la aproximación de ángulo pequeño para el tamaño angular.

## Syntax

```powershell
Get-AtEyeLengthSizeInMM [-DistanceInMeters] <double> [-SizeInMeters] <double> [-EyeToArmLengthInMeters <double>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | La distancia al objeto en metros. |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | La dimensión real del objeto en metros. |
| `-EyeToArmLengthInMeters` | Double | — | — | Named | `0` | La distancia de un brazo de distancia en metros. El valor predeterminado es 0.7. |

## Examples

### Example 1

```powershell
Get-AtEyeLengthSizeInMM -DistanceInMeters 10 -SizeInMeters 1
```

Calcula el tamaño aparente a la distancia del brazo para un objeto de 1 metro de tamaño a 10 metros de distancia.

## Related Links

- [Get-AtEyeLengthSizeInMM on GitHub](https://github.com/genXdev/genXdev)
