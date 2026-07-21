# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Parses strings for any valid URI.

## Description

* Extracts all valid URIs from input text, supporting standard and custom URI
  schemes like http:, https:, ftp:, magnet:, about:, etc.
* Returns Uri objects for each valid URI found.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Text input that may contain URIs |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Parses the provided text string for URIs and returns Uri objects.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Pipes a text string to the cmdlet for URI parsing.

## Parameter Details

### `-Text <String[]>`

> Text input that may contain URIs

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

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Open-AllPossibleQueries.md)
