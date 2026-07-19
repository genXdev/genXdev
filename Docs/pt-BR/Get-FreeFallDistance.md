# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a distância percorrida durante a queda livre para um determinado intervalo de tempo.

## Description

Calcula a distância percorrida durante queda livre usando um método numérico que considera resistência do ar e velocidade terminal.

## Syntax

```powershell
Get-FreeFallDistance [-DurationInSeconds] <double> [[-TerminalVelocityInMetersPerSecond] <double>] [[-GravityInMetersPerSecondSquared] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | A duração da queda em segundos |
| `-TerminalVelocityInMetersPerSecond` | Double | — | — | 1 | `0` | A velocidade terminal em metros por segundo (padrão: 53) |
| `-GravityInMetersPerSecondSquared` | Double | — | — | 2 | `0` | A aceleração da gravidade em m/s² (padrão: 9,81) |
| `-As` | String | — | — | 3 | — | A unidade para a distância de saída |

## Examples

### Example 1

```powershell
Get-FreeFallDistance -DurationInSeconds 10 -TerminalVelocityInMetersPerSecond 53 -As "feet"
```

Calcula a distância percorrida em queda livre em 10 segundos, em pés.

### Example 2

```powershell
Get-FreeFallDistance 5
```

Calcula a distância em 5 segundos em metros.

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
