# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 2つのベクトル間のコサイン類似度を計算します。

## Description

2つの数値ベクトル（配列）を入力として受け取り、それらのコサイン類似度を計算します。結果はベクトルがどの程度関連しているかを示し、0は完全に異なることを、1は同一であることを意味します。

## Syntax

```powershell
Get-VectorSimilarity [-Vector1] <double[]> [-Vector2] <double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | 最初の数値ベクトル配列 |
| `-Vector2` | Double[] | ✅ | — | 1 | — | 2 番目の数値ベクトル配列 |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

約0.998を返し、高い類似性を示します。

## Related Links

- [Get-VectorSimilarity on GitHub](https://github.com/genXdev/genXdev)
