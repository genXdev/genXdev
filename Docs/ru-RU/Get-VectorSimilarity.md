# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Вычисляет косинусное сходство между двумя векторами.

## Description

Принимает два числовых вектора (массива) на вход и вычисляет их косинусное сходство. Результат показывает, насколько тесно связаны вектора: 0 означает полное различие, а 1 — идентичность.

## Syntax

```powershell
Get-VectorSimilarity [-Vector1] <double[]> [-Vector2] <double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | First vector array of numbers |
| `-Vector2` | Double[] | ✅ | — | 1 | — | Второй векторный массив чисел |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

Возвращает приблизительно 0.998, что указывает на высокое сходство.

## Related Links

- [Get-VectorSimilarity on GitHub](https://github.com/genXdev/genXdev)
