# Get-AtEyeLengthSizeInMM

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula o tamanho aparente em mm de um objeto à distância de um braço esticado.

## Description

Calcula o tamanho que um objeto pareceria ter se fosse visto a uma distância equivalente ao comprimento médio do braço de um adulto (aproximadamente 0,7 metros), dado seu tamanho real e sua distância. O cálculo utiliza a aproximação de ângulo pequeno para tamanho angular.

## Syntax

```powershell
Get-AtEyeLengthSizeInMM [-DistanceInMeters] <double> [-SizeInMeters] <double> [-EyeToArmLengthInMeters <double>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | A distância até o objeto em metros. |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | O tamanho real do objeto em metros. |
| `-EyeToArmLengthInMeters` | Double | — | — | Named | `0` | A distância do comprimento do braço em metros. O valor padrão é 0,7. |

## Examples

### Example 1

```powershell
Get-AtEyeLengthSizeInMM -DistanceInMeters 10 -SizeInMeters 1
```

Calcula o tamanho aparente à distância do braço para um objeto de 1 metro de tamanho a 10 metros de distância.

## Related Links

- [Get-AtEyeLengthSizeInMM on GitHub](https://github.com/genXdev/genXdev)
