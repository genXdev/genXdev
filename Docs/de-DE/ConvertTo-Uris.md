# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Parst Zeichenketten auf gültige URIs.

## Description

* Extrahiert alle gültigen URIs aus dem Eingabetext und unterstützt dabei Standard- und benutzerdefinierte URI-Schemas wie http:, https:, ftp:, magnet:, about: usw.
* Gibt Uri-Objekte für jeden gefundenen gültigen URI zurück.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <string[]>] [<CommonParameters>]
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

Analysiert die bereitgestellte Textzeichenfolge nach URIs und gibt Uri-Objekte zurück.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Leitet eine Textzeichenfolge an das Cmdlet zur URI-Analyse weiter.

## Related Links

- [ConvertTo-Uris on GitHub](https://github.com/genXdev/genXdev)
