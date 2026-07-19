# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calculates the cosine similarity between two vectors.

## Description

Takes two numerical vectors (arrays) as input and computes their cosine similarity. The result indicates how closely related the vectors are, with 0 meaning completely dissimilar and 1 meaning identical.

## Syntax

```powershell
Get-VectorSimilarity [-Vector1] <double[]> [-Vector2] <double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | First vector array of numbers |
| `-Vector2` | Double[] | ✅ | — | 1 | — | Second vector array of numbers |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

Returns approximately 0.998, indicating high similarity.

## Related Links

- [Get-VectorSimilarity on GitHub](https://github.com/genXdev/genXdev)
