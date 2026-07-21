# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Parseert tekenreeksen op geldige URI's.

## Description

* Haalt alle geldige URI's uit de invoertekst, met ondersteuning voor standaard en aangepaste URI-schema's zoals http:, https:, ftp:, magnet:, about:, enz.
* Retourneert Uri-objecten voor elke gevonden geldige URI.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Tekstinvoer die URI's kan bevatten |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Parseert de opgegeven tekstreeks voor URI's en retourneert Uri-objecten.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Pijpt een tekenreeks naar de cmdlet voor URI-ontleding.

## Parameter Details

### `-Text <String[]>`

> Tekstinvoer die URI's kan bevatten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Open-AllPossibleQueries.md)
