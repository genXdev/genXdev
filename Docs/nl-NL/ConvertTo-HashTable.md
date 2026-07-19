# ConvertTo-HashTable

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Converteert een PSCustomObject recursief naar een HashTable.

## Description

* Deze functie converteert een PSCustomObject en al zijn geneste PSCustomObject-eigenschappen naar HashTables.
* Het verwerkt arrays en andere verzamelingstypen door elk element recursief te verwerken.

## Syntax

```powershell
ConvertTo-HashTable [-InputObject] <Object> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | De PSCustomObject converteren naar een HashTable |

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

Converteer een PSCustomObject naar een HashTable met geneste eigenschappen.

## Outputs


## Related Links

- [ConvertTo-HashTable on GitHub](https://github.com/genXdev/genXdev)
