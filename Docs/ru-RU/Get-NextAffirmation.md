# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt

## Synopsis

> Возвращает случайный аффирмационный текст из API affirmations.dev.

## Description

* Получает случайное утверждение из API affirmations.dev и при необходимости озвучивает его с помощью синтеза речи.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Use text-to-speech to speak the affirmation |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Получает случайное аффирмацию из API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Получает случайное утверждение и озвучивает его с помощью синтеза речи.

## Related Links

- [Get-NextAffirmation on GitHub](https://github.com/genXdev/genXdev)
