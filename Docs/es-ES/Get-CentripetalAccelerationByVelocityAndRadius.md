# Get-CentripetalAccelerationByVelocityAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la aceleración centrípeta.

## Description

Utiliza a = v² / r.

## Syntax

```powershell
Get-CentripetalAccelerationByVelocityAndRadius [-VelocityInMetersPerSecond] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Velocidad en m/s |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Radio en metros |
| `-As` | String | — | — | 2 | — | Output unit for acceleration |

## Examples

### Example 1

```powershell
Get-CentripetalAccelerationByVelocityAndRadius -VelocityInMetersPerSecond 10 -RadiusInMeters 5 -As "g"
```

Calcula la aceleración centrípeta para una velocidad de 10 m/s y un radio de 5 m, salida en unidades g.

### Example 2

```powershell
Get-CentripetalAccelerationByVelocityAndRadius 20 10
```

Calcula la aceleración centrípeta para velocidad 20 m/s y radio 10 m usando parámetros posicionales.

## Related Links

- [Get-CentripetalAccelerationByVelocityAndRadius on GitHub](https://github.com/genXdev/genXdev)
