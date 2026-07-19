# Get-DragForceByVelocityDensityAreaAndCoefficient

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a força de arrasto.

## Description

Usa F = 1/2 C ρ A v².

## Syntax

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient [-VelocityInMetersPerSecond] <double> [-DensityInKilogramsPerCubicMeter] <double> [-AreaInSquareMeters] <double> [-Coefficient] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-VelocityInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Velocidade em m/s |
| `-DensityInKilogramsPerCubicMeter` | Double | ✅ | — | 1 | `0` | Densidade do fluido em kg/m³ |
| `-AreaInSquareMeters` | Double | ✅ | — | 2 | `0` | Área da seção transversal em m² |
| `-Coefficient` | Double | ✅ | — | 3 | `0` | Coeficiente de arrasto |
| `-As` | String | — | — | 4 | — | Unidade de força |

## Examples

### Example 1

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient -VelocityInMetersPerSecond 10 -DensityInKilogramsPerCubicMeter 1.225 -AreaInSquareMeters 1 -Coefficient 0.5 -As "poundforce"
```

Calcula a força de arrasto usando velocidade de 10 m/s, densidade do ar 1,225 kg/m³, área 1 m² e coeficiente 0,5, gerando saída em libra-força.

### Example 2

```powershell
Get-DragForceByVelocityDensityAreaAndCoefficient 20 1.225 2 0.3
```

Calcula a força de arrasto usando parâmetros posicionais: velocidade 20 m/s, densidade 1,225 kg/m³, área 2 m², coeficiente 0,3.

## Related Links

- [Get-DragForceByVelocityDensityAreaAndCoefficient on GitHub](https://github.com/genXdev/genXdev)
