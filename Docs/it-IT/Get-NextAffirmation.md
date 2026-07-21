# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Restituisce un testo di affermazione casuale dall'API affirmations.dev.

## Description

* Recupera un'affermazione casuale dall'API affirmations.dev e
  opzionalmente la pronuncia utilizzando la sintesi vocale.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Usa la sintesi vocale per pronunciare l'affermazione |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Recupera un'affermazione casuale dall'API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Recupera un'affermazione casuale e la pronuncia utilizzando la sintesi vocale.

## Parameter Details

### `-Speak`

> Usa la sintesi vocale per pronunciare l'affermazione

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-WikipediaSummary.md)
