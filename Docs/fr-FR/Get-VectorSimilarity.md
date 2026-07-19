# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcule la similarité cosinus entre deux vecteurs.

## Description

Prend deux vecteurs numériques (tableaux) en entrée et calcule leur similarité cosinus. Le résultat indique à quel point les vecteurs sont liés, 0 signifiant complètement différent et 1 identique.

## Syntax

```powershell
Get-VectorSimilarity [-Vector1] <double[]> [-Vector2] <double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | Premier tableau vectoriel de nombres |
| `-Vector2` | Double[] | ✅ | — | 1 | — | Deuxième tableau vectoriel de nombres |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

Retourne environ 0,998, indiquant une forte similarité.

## Related Links

- [Get-VectorSimilarity on GitHub](https://github.com/genXdev/genXdev)
