# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Returnerar en slumpmässig bekräftelsetext från affirmations.dev API.

## Description

@{response=Hämtar en slumpmässig affirmation från affirmations.dev-API:et och kan eventuellt säga den med text-till-tal.}

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Använd text-till-tal för att säga affirmationen |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Hämtar en slumpmässig bekräftelse från API:et.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Hämtar en slumpmässig affirmation och säger den med text-till-tal.

## Parameter Details

### `-Speak`

> Använd text-till-tal för att säga affirmationen

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WikipediaSummary.md)
