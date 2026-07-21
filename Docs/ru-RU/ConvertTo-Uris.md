# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Анализирует строки на наличие любого допустимого URI.

## Description

* Извлекает все допустимые URI из входного текста, поддерживая стандартные и пользовательские схемы URI, такие как http:, https:, ftp:, magnet:, about: и т.д.
* Возвращает объекты Uri для каждого найденного допустимого URI.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Входной текст, который может содержать URI |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Анализирует предоставленную текстовую строку на наличие URI и возвращает объекты Uri.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Передает текстовую строку в командлет для разбора URI.

## Parameter Details

### `-Text <String[]>`

> Входной текст, который может содержать URI

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
