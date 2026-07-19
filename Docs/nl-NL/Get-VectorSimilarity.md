# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Berekent de cosinusovereenkomst tussen twee vectoren.

## Description

Neemt twee numerieke vectoren (arrays) als invoer en berekent hun cosinusovereenkomst. Het resultaat geeft aan hoe nauw verwant de vectoren zijn, waarbij 0 volledig verschillend betekent en 1 identiek.

## Syntax

```powershell
Get-VectorSimilarity [-Vector1] <double[]> [-Vector2] <double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | Eerste vectorarray van getallen |
| `-Vector2` | Double[] | ✅ | — | 1 | — | Tweede vectorarray van getallen |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

Geeft ongeveer 0,998 terug, wat duidt op een hoge gelijkenis.

## Related Links

- [Get-VectorSimilarity on GitHub](https://github.com/genXdev/genXdev)
