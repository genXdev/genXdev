# ConvertTo-HashTable

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> PSCustomObject を HashTable に再帰的に変換します。

## Description

* この関数は、PSCustomObjectとそのすべてのネストされたPSCustomObjectプロパティをHashTableに変換します。
* 配列やその他のコレクション型を処理する場合、各要素を再帰的に処理します。

## Syntax

```powershell
ConvertTo-HashTable [-InputObject] <Object> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | ハッシュテーブルに変換するPSCustomObject |

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

PSCustomObject をネストされたプロパティを持つ HashTable に変換する

## Outputs


## Related Links

- [ConvertTo-HashTable on GitHub](https://github.com/genXdev/genXdev)
