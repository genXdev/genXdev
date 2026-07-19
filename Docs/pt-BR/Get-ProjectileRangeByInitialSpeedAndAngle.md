# Get-ProjectileRangeByInitialSpeedAndAngle

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula o alcance de um projétil.

## Description

Utiliza a fórmula R = (v² sen(2θ)) / g para o movimento ideal de projéteis.

## Syntax

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle [-InitialSpeedInMetersPerSecond] <double> [-AngleInDegrees] <double> [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialSpeedInMetersPerSecond` | Double | ✅ | — | 0 | `0` | Velocidade inicial em m/s |
| `-AngleInDegrees` | Double | ✅ | — | 1 | `0` | Ângulo de lançamento em graus |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | Gravidade em m/s² (padrão: 9,81) |
| `-As` | String | — | — | 3 | — | Unidade de saída para o intervalo |

## Examples

### Example 1

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle -InitialSpeedInMetersPerSecond 20 -AngleInDegrees 45 -As "feet"
```

Calcula o alcance usando a fórmula do movimento de projétil.

### Example 2

```powershell
Get-ProjectileRangeByInitialSpeedAndAngle 30 30
```

Calcula o intervalo com parâmetros posicionais.

## Related Links

- [Get-ProjectileRangeByInitialSpeedAndAngle on GitHub](https://github.com/genXdev/genXdev)
