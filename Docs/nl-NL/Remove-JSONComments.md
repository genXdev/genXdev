# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Verwijdert opmerkingen uit JSON-inhoud.

## Description

* Verwerkt JSON-inhoud en verwijdert zowel enkelregelige als meerregelige opmerkingen, terwijl de JSON-structuur behouden blijft.
* Nuttig voor het opschonen van JSON-bestanden met documentatieopmerkingen voordat ze worden geparseerd.
* Ondersteunt zowel enkelregelige opmerkingen (//) als meerregelige opmerkingen (/* */).

## Syntax

```powershell
Remove-JSONComments [-Json] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | ["Dit is een voorbeeld", "Nog een voorbeeld", "Laatste voorbeeld"] |

## Examples

### Example 1

```powershell
$jsonContent = @'
{
    // This is a comment
    "name": "test", /* inline comment */
    "value": 123
}
'@ -split "`n"
Remove-JSONComments -Json $jsonContent
```

Verwijdert opmerkingen uit JSON-inhoud die in een variabele is opgeslagen.

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

Verwerkt JSON-inhoud uit de pijplijn.

## Related Links

- [Remove-JSONComments on GitHub](https://github.com/genXdev/genXdev)
