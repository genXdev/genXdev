# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt

## Synopsis

> Geeft een willekeurige affirmatietekst terug van de affirmations.dev API.

## Description

* Haalt een willekeurige affirmatie op van de affirmations.dev API en
  spreekt deze optioneel uit met behulp van tekst-naar-spraak.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | I am capable and worthy of achieving my goals. |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Haalt een willekeurige bevestiging op van de API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Haalt een willekeurige affirmatie op en spreekt deze uit met tekst-naar-spraak.

## Related Links

- [Get-NextAffirmation on GitHub](https://github.com/genXdev/genXdev)
