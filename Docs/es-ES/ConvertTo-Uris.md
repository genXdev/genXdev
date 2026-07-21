# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Analiza cadenas en busca de cualquier URI válido.

## Description

* Extrae todos los URI válidos del texto de entrada, admitiendo esquemas de URI estándar y personalizados como http:, https:, ftp:, magnet:, about:, etc.
* Devuelve objetos Uri para cada URI válido encontrado.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Entrada de texto que puede contener URIs |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Analiza la cadena de texto proporcionada en busca de URI y devuelve objetos Uri.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Envía una cadena de texto al cmdlet para el análisis de URI.

## Parameter Details

### `-Text <String[]>`

> Entrada de texto que puede contener URIs

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

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Open-AllPossibleQueries.md)
