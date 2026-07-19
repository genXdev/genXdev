# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Разбирает строки на наличие любого валидного URI.

## Description

* Извлекает все валидные URI из входного текста, поддерживая стандартные и пользовательские схемы URI, такие как http:, https:, ftp:, magnet:, about: и др.
* Возвращает объекты Uri для каждого найденного валидного URI.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <string[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Текстовый ввод, который может содержать URI |

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

Передает текстовую строку командлету для разбора URI.

## Related Links

- [ConvertTo-Uris on GitHub](https://github.com/genXdev/genXdev)
