# ConvertTo-HashTable

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Convertit un PSCustomObject en HashTable de manière récursive.

## Description

* Cette fonction convertit un PSCustomObject et toutes ses propriétés PSCustomObject imbriquées en HashTables.
* Elle gère les tableaux et autres types de collections en traitant chaque élément de manière récursive.

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

Convertir un PSCustomObject en HashTable avec des propriétés imbriquées.

## Outputs


## Related Links

- [ConvertTo-HashTable on GitHub](https://github.com/genXdev/genXdev)
