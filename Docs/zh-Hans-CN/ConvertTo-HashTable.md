# ConvertTo-HashTable

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 递归地将 PSCustomObject 转换为哈希表。

## Description

* 此函数将 PSCustomObject 及其所有嵌套的 PSCustomObject 属性转换为 HashTable。
* 它通过递归处理每个元素来处理数组和其他集合类型。

## Syntax

```powershell
ConvertTo-HashTable [-InputObject] <Object> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | The PSCustomObject to convert into a HashTable |

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

function Convert-PSCustomObjectToHashTable { param([PSCustomObject]$InputObject) if ($null -eq $InputObject) { return $null } $hashTable = @{} foreach ($property in $InputObject.PSObject.Properties) { $value = $property.Value if ($value -is [PSCustomObject]) { $value = Convert-PSCustomObjectToHashTable -InputObject $value } elseif ($value -is [System.Collections.IList]) { $arrayList = New-Object System.Collections.ArrayList foreach ($item in $value) { if ($item -is [PSCustomObject]) { $arrayList.Add((Convert-PSCustomObjectToHashTable -InputObject $item)) | Out-Null } else { $arrayList.Add($item) | Out-Null } } $value = $arrayList } $hashTable[$property.Name] = $value } return $hashTable }

## Outputs


## Related Links

- [ConvertTo-HashTable on GitHub](https://github.com/genXdev/genXdev)
