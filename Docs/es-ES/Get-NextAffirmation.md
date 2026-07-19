# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt

## Synopsis

> Devuelve un texto de afirmación aleatorio de la API affirmations.dev.

## Description

* Recupera una afirmación aleatoria de la API de affirmations.dev y opcionalmente la pronuncia usando texto a voz.

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

Recupera una afirmación aleatoria de la API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Recupera una afirmación aleatoria y la dice usando texto a voz.

## Related Links

- [Get-NextAffirmation on GitHub](https://github.com/genXdev/genXdev)
