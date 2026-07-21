# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Analysiert Zeichenfolgen auf gültige URIs.

## Description

* Extrahiert alle gültigen URIs aus Eingabetext und unterstützt standardmäßige und benutzerdefinierte URI-Schemata wie http:, https:, ftp:, magnet:, about:, usw.
* Gibt Uri-Objekte für jeden gefundenen gültigen URI zurück.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Texteingabe, die URIs enthalten kann |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Analysiert die angegebene Textzeichenfolge auf URIs und gibt Uri-Objekte zurück.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Leitet eine Textzeichenfolge zur URI-Analyse an das Cmdlet weiter.

## Parameter Details

### `-Text <String[]>`

> Texteingabe, die URIs enthalten kann

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

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-AllPossibleQueries.md)
