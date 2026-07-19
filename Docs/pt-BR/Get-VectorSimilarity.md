# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a similaridade de cosseno entre dois vetores.

## Description

Recebe dois vetores numéricos (arrays) como entrada e calcula sua similaridade de cosseno. O resultado indica o quão relacionados os vetores estão, com 0 significando completamente diferentes e 1 significando idênticos.

## Syntax

```powershell
Get-VectorSimilarity [-Vector1] <double[]> [-Vector2] <double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | Primeiro array vetorial de números |
| `-Vector2` | Double[] | ✅ | — | 1 | — | Segundo vetor de números |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

Retorna aproximadamente 0.998, indicando alta similaridade.

## Related Links

- [Get-VectorSimilarity on GitHub](https://github.com/genXdev/genXdev)
