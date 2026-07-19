# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 计算两个向量之间的余弦相似度。

## Description

该函数接收两个数值向量（数组）作为输入，计算它们的余弦相似度。结果表示两个向量的相关程度，0表示完全不同，1表示完全相同。

## Syntax

```powershell
Get-VectorSimilarity [-Vector1] <double[]> [-Vector2] <double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | 第一个数字向量数组 |
| `-Vector2` | Double[] | ✅ | — | 1 | — | 第二个数字向量数组 |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

返回约0.998，表明相似度很高。

## Related Links

- [Get-VectorSimilarity on GitHub](https://github.com/genXdev/genXdev)
