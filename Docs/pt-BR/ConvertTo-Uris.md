# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Analisa strings em busca de qualquer URI válida.

## Description

* Extrai todos os URIs válidos do texto de entrada, suportando esquemas de URI padrão e personalizados como http:, https:, ftp:, magnet:, about:, etc.
* Retorna objetos Uri para cada URI válido encontrado.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <string[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Entrada de texto que pode conter URIs |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Analisa a string de texto fornecida em busca de URIs e retorna objetos Uri.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Envia uma string de texto para o cmdlet para análise de URI.

## Related Links

- [ConvertTo-Uris on GitHub](https://github.com/genXdev/genXdev)
