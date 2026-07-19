# Get-OrbitalVelocityByRadiusAndMass

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a velocidade orbital.

## Description

Usa v = sqrt(G M / r).

## Syntax

```powershell
Get-OrbitalVelocityByRadiusAndMass [-RadiusInMeters] <double> [-CentralMassInKilograms] <double> [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RadiusInMeters` | Double | ✅ | — | 0 | `0` | Raio orbital em metros |
| `-CentralMassInKilograms` | Double | ✅ | — | 1 | `0` | Massa central em kg |
| `-As` | String | — | — | 2 | — | Output unit for velocity: meters per second (m/s) |

## Examples

### Example 1

```powershell
Get-OrbitalVelocityByRadiusAndMass -RadiusInMeters 6371000 -CentralMassInKilograms 5.972e24 -As "km/h"
```

Usa a massa e o raio da Terra para demonstração.

### Example 2

```powershell
Get-OrbitalVelocityByRadiusAndMass 10000000 1e26
```

Cálculo simples com saída padrão em m/s.

## Related Links

- [Get-OrbitalVelocityByRadiusAndMass on GitHub](https://github.com/genXdev/genXdev)
