# Get-FreeFallDistance

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-FreeFallDistance on GitHub](https://github.com/genXdev/genXdev)
