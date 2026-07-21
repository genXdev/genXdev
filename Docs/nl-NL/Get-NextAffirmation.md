# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Retourneert een willekeurige bevestigingstekst van de affirmations.dev-API.

## Description

* Haalt een willekeurige affirmatie op van de affirmations.dev API en spreekt deze optioneel uit met tekst-naar-spraak.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Use text-to-speech om de bevestiging uit te spreken |

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

Haalt een willekeurige bevestiging op en spreekt deze uit met tekst-naar-spraak.

## Parameter Details

### `-Speak`

> Use text-to-speech om de bevestiging uit te spreken

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-WikipediaSummary.md)
