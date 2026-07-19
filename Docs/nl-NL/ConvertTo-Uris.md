# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Parset strings op geldige URI's.

## Description

* Extraheert alle geldige URI's uit invoertekst, ondersteunt standaard en aangepaste URI-schema's zoals http:, https:, ftp:, magnet:, about:, enz.
* Retourneert Uri-objecten voor elke gevonden geldige URI.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <string[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Textinvoer die URI's kan bevatten |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Parseert de opgegeven tekststring naar URI's en retourneert Uri-objecten.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Pijpt een tekenreeks naar de cmdlet voor URI-parsing.

## Related Links

- [ConvertTo-Uris on GitHub](https://github.com/genXdev/genXdev)
