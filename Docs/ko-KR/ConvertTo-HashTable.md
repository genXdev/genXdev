# ConvertTo-HashTable

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> PSCustomObject를 재귀적으로 HashTable로 변환합니다.

## Description

* 이 함수는 PSCustomObject 및 모든 중첩된 PSCustomObject 속성을 HashTable로 변환합니다.
* 배열 및 기타 컬렉션 유형을 처리하기 위해 각 요소를 재귀적으로 처리합니다.

## Syntax

```powershell
ConvertTo-HashTable [-InputObject] <Object> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | 변환할 PSCustomObject를 HashTable로 |

## Examples

### Example 1

```powershell
$object = [PSCustomObject]@{
    Name = "John"
    Age = 30
    Details = [PSCustomObject]@{
        City = "New York"
    }
}
$hashTable = ConvertTo-HashTable -InputObject $object
```

PSCustomObject를 중첩 속성을 가진 HashTable로 변환합니다.

## Outputs


## Related Links

- [ConvertTo-HashTable on GitHub](https://github.com/genXdev/genXdev)
