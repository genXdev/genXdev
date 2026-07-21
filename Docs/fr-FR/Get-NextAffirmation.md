# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Renvoie un texte d'affirmation aléatoire depuis l'API affirmations.dev.

## Description

* Récupère une affirmation aléatoire depuis l'API affirmations.dev et
  la prononce éventuellement via la synthèse vocale.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Utilisez la synthèse vocale pour prononcer l'affirmation |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Récupère une affirmation aléatoire à partir de l'API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Récupère une affirmation aléatoire et la prononce à l'aide de la synthèse vocale.

## Parameter Details

### `-Speak`

> Utilisez la synthèse vocale pour prononcer l'affirmation

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-WikipediaSummary.md)
