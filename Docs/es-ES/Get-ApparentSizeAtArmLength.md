# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula el tamaño aparente de un objeto a la distancia del brazo extendido.

## Description

Calcula el tamaño aparente usando la aproximación de ángulo pequeño.

## Syntax

```powershell
Get-ApparentSizeAtArmLength [-DistanceInMeters] <double> [-SizeInMeters] <double> [[-ArmLengthInMeters] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | La distancia al objeto en metros |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | El tamaño real del objeto en metros |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | La longitud del brazo en metros (predeterminado: 0.7) |
| `-As` | String | — | — | 3 | — | La unidad para el tamaño de salida |

## Examples

### Example 1

```powershell
Get-ApparentSizeAtArmLength -DistanceInMeters 10 -SizeInMeters 1 -As "centimeters"
```

Calcula el tamaño aparente de un objeto de 1 metro a 10 metros de distancia.

### Example 2

```powershell
Get-ApparentSizeAtArmLength 10 1
```

Calcula el tamaño aparente utilizando parámetros posicionales.

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
