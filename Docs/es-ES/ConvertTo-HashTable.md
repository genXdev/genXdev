# ConvertTo-HashTable

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Convierte un PSCustomObject en una tabla hash de forma recursiva.

## Description

* Esta función convierte un PSCustomObject y todas sus propiedades anidadas de PSCustomObject en HashTables.
* Maneja arreglos y otros tipos de colecciones procesando cada elemento recursivamente.

## Syntax

```powershell
ConvertTo-HashTable [-InputObject] <Object> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | ✅ | ✅ (ByValue) | 0 | — | El objeto PSCustomObject a convertir en una HashTable |

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

Convierte un PSCustomObject en una HashTable con propiedades anidadas.

## Outputs


## Related Links

- [ConvertTo-HashTable on GitHub](https://github.com/genXdev/genXdev)
