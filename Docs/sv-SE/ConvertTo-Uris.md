# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Parsar strängar för vilken giltig URI som helst.

## Description

* Extraherar alla giltiga URI:er från indatatexten, med stöd för standard- och anpassade URI-scheman som http:, https:, ftp:, magnet:, about:, etc.
* Returnerar Uri-objekt för varje giltig URI som hittas.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | PS C:\> Get-Help Invoke-RestMethod |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Parsar den angivna textsträngen för URI:er och returnerar Uri-objekt.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Pipear en textsträng till cmdleten för URI-tolkning.

## Parameter Details

### `-Text <String[]>`

> PS C:\> Get-Help Invoke-RestMethod

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

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-AllPossibleQueries.md)
