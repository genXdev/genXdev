# ConvertTo-HashTable

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Converte um PSCustomObject em uma HashTable recursivamente.

## Description

* Esta função converte um PSCustomObject e todas as suas propriedades PSCustomObject aninhadas em HashTables.
* Ela lida com arrays e outros tipos de coleção processando cada elemento recursivamente.

## Syntax

```powershell
ConvertTo-HashTable [-InputObject] <Object> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | O PSCustomObject a converter num HashTable |

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

Converter um PSCustomObject para uma HashTable com propriedades aninhadas.

## Outputs


## Related Links

- [ConvertTo-HashTable on GitHub](https://github.com/genXdev/genXdev)
