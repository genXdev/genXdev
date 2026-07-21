# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Returns a random affirmation text from the affirmations.dev API.

## Description

* Retrieves a random affirmation from the affirmations.dev API and
  optionally speaks it using text-to-speech.

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

Retrieves a random affirmation from the API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Retrieves a random affirmation and speaks it using text-to-speech.

## Parameter Details

### `-Speak`

> Use text-to-speech to speak the affirmation

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WikipediaSummary.md)
