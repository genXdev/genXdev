# Get-EscapeVelocityByMassAndRadius

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a velocidade de escape.

## Description

Usa v = sqrt(2 G M / r).

## Syntax

```powershell
Get-EscapeVelocityByMassAndRadius [-MassInKilograms] <double> [-RadiusInMeters] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-MassInKilograms` | Double | ✅ | — | 0 | `0` | Massa do corpo em kg |
| `-RadiusInMeters` | Double | ✅ | — | 1 | `0` | Raio em metros |
| `-As` | String | — | — | 2 | — | Output unit for velocity: meters per second (m/s) |

## Examples

### Example 1

```powershell
Get-EscapeVelocityByMassAndRadius -MassInKilograms 5.972e24 -RadiusInMeters 6371000 -As "km/h"
```

Calcula a velocidade de escape para um corpo com a massa e o raio da Terra.

### Example 2

```powershell
Get-EscapeVelocityByMassAndRadius 1e26 10000000
```

Calcula a velocidade de escape usando unidades padrão de m/s.

## Related Links

- [Get-EscapeVelocityByMassAndRadius on GitHub](https://github.com/genXdev/genXdev)
