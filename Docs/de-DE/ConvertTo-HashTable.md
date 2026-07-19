# ConvertTo-HashTable

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Konvertiert ein PSCustomObject rekursiv in eine HashTable.

## Description

* Diese Funktion konvertiert ein PSCustomObject und alle seine verschachtelten PSCustomObject-Eigenschaften in HashTables.
* Sie verarbeitet Arrays und andere Sammlungstypen, indem sie jedes Element rekursiv verarbeitet.

## Syntax

```powershell
ConvertTo-HashTable [-InputObject] <Object> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | Das PSCustomObject, das in eine HashTable konvertiert werden soll |

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

Konvertieren Sie ein PSCustomObject in eine HashTable mit verschachtelten Eigenschaften.

## Outputs


## Related Links

- [ConvertTo-HashTable on GitHub](https://github.com/genXdev/genXdev)
