# Get-ApparentSizeAtArmLength

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula o tamanho aparente de um objeto à distância do braço.

## Description

Calcula o tamanho aparente usando a aproximação de pequeno ângulo.

## Syntax

```powershell
Get-ApparentSizeAtArmLength [-DistanceInMeters] <double> [-SizeInMeters] <double> [[-ArmLengthInMeters] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DistanceInMeters` | Double | ✅ | — | 0 | `0` | A distância até o objeto em metros |
| `-SizeInMeters` | Double | ✅ | — | 1 | `0` | O tamanho real do objeto em metros |
| `-ArmLengthInMeters` | Double | — | — | 2 | `0` | O comprimento do braço em metros (padrão: 0,7) |
| `-As` | String | — | — | 3 | — | A unidade para o tamanho da saída |

## Examples

### Example 1

```powershell
Get-ApparentSizeAtArmLength -DistanceInMeters 10 -SizeInMeters 1 -As "centimeters"
```

Calcula o tamanho aparente de um objeto de 1 metro a uma distância de 10 metros.

### Example 2

```powershell
Get-ApparentSizeAtArmLength 10 1
```

Calcula o tamanho aparente usando parâmetros posicionais.

## Related Links

- [Get-ApparentSizeAtArmLength on GitHub](https://github.com/genXdev/genXdev)
