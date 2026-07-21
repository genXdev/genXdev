# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Розбирає рядки на наявність будь-якого дійсного URI.

## Description

* Видобуває всі дійсні URI з вхідного тексту, підтримуючи стандартні та спеціальні URI схеми, такі як http:, https:, ftp:, magnet:, about: тощо.
* Повертає об'єкти Uri для кожного знайденого дійсного URI.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Текстовий ввід, який може містити URI |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Аналізує наданий текстовий рядок на наявність URI та повертає об'єкти Uri.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Надсилає текстовий рядок до командлета для розбору URI.

## Parameter Details

### `-Text <String[]>`

> Текстовий ввід, який може містити URI

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

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Open-AllPossibleQueries.md)
