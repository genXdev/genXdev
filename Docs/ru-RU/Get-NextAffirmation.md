# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Возвращает случайный текст аффирмации из API affirmations.dev.

## Description

* Извлекает случайное утверждение из API affirmations.dev и
  при необходимости озвучивает его с помощью синтеза речи.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Используйте синтез речи, чтобы произнести аффирмацию |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Извлекает случайное утверждение из API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Получает случайное утверждение и произносит его с помощью текстового воспроизведения.

## Parameter Details

### `-Speak`

> Используйте синтез речи, чтобы произнести аффирмацию

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-WikipediaSummary.md)
