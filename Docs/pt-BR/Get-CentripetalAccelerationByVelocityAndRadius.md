# Get-CentripetalAccelerationByVelocityAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a aceleração centrípeta.

## Description

Usa a = v² / r.

## Syntax

```powershell
Get-CentripetalAccelerationByVelocityAndRadius [-VelocityInMetersPerSecond] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Velocidade em m/s |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Raio em metros |
| `-As` | String | — | — | 2 | — | Unidade de saída para aceleração |

## Examples

### Example 1

```powershell
Get-CentripetalAccelerationByVelocityAndRadius -VelocityInMetersPerSecond 10 -RadiusInMeters 5 -As "g"
```

Calcula aceleração centrípeta para velocidade 10 m/s e raio 5 m, saída em unidades g.

### Example 2

```powershell
Get-CentripetalAccelerationByVelocityAndRadius 20 10
```

Calcula a aceleração centrípeta para velocidade 20 m/s e raio 10 m usando parâmetros posicionais.

## Related Links

- [Get-CentripetalAccelerationByVelocityAndRadius on GitHub](https://github.com/genXdev/genXdev)
