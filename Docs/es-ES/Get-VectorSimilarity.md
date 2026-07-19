# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula la similitud del coseno entre dos vectores.

## Description

Toma dos vectores numéricos (arrays) como entrada y calcula su similitud coseno. El resultado indica qué tan relacionados están los vectores, donde 0 significa completamente diferentes y 1 significa idénticos.

## Syntax

```powershell
Get-VectorSimilarity [-Vector1] <double[]> [-Vector2] <double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | Primer vector de números de tipo array |
| `-Vector2` | Double[] | ✅ | — | 1 | — | Second vector array of numbers |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

Devuelve aproximadamente 0.998, indicando una alta similitud.

## Related Links

- [Get-VectorSimilarity on GitHub](https://github.com/genXdev/genXdev)
