# ConvertTo-HashTable

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Преобразует объект PSCustomObject в хеш-таблицу рекурсивно.

## Description

* Эта функция преобразует PSCustomObject и все его вложенные свойства PSCustomObject в HashTables.
* Она обрабатывает массивы и другие типы коллекций, рекурсивно обрабатывая каждый элемент.

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

Преобразовать PSCustomObject в HashTable с вложенными свойствами.

## Outputs


## Related Links

- [ConvertTo-HashTable on GitHub](https://github.com/genXdev/genXdev)
