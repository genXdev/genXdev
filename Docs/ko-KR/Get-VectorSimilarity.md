# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 두 벡터 간의 코사인 유사도를 계산합니다.

## Description

두 개의 수치 벡터(배열)를 입력받아 코사인 유사도를 계산합니다. 결과는 벡터 간의 연관 정도를 나타내며, 0은 완전히 다름, 1은 동일함을 의미합니다.

## Syntax

```powershell
Get-VectorSimilarity [-Vector1] <double[]> [-Vector2] <double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | 첫 번째 숫자 벡터 배열 |
| `-Vector2` | Double[] | ✅ | — | 1 | — | 숫자로 구성된 두 번째 벡터 배열 |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

약 0.998을 반환하며, 높은 유사성을 나타냅니다.

## Related Links

- [Get-VectorSimilarity on GitHub](https://github.com/genXdev/genXdev)
