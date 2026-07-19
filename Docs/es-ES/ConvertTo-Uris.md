# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Analiza cadenas en busca de cualquier URI válida.

## Description

* Extrae todos los URI válidos del texto de entrada, soportando esquemas de URI estándar y personalizados como http:, https:, ftp:, magnet:, about:, etc.
* Devuelve objetos Uri para cada URI válido encontrado.

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

Analiza la cadena de texto proporcionada en busca de URI y devuelve objetos URI.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Pasa una cadena de texto al cmdlet para el análisis de URI.

## Related Links

- [ConvertTo-Uris on GitHub](https://github.com/genXdev/genXdev)
