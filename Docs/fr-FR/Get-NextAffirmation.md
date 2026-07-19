# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt

## Synopsis

> Renvoie un texte d'affirmation aléatoire depuis l'API affirmations.dev.

## Description

* Récupère une affirmation aléatoire depuis l'API affirmations.dev et la prononce éventuellement via la synthèse vocale.

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

Récupère une affirmation aléatoire depuis l'API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Récupère une affirmation aléatoire et la prononce à l'aide de la synthèse vocale.

## Related Links

- [Get-NextAffirmation on GitHub](https://github.com/genXdev/genXdev)
