# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Zwraca losowy tekst afirmacji z API affirmations.dev.

## Description

* Pobiera losowe afirmacje z API affirmations.dev i opcjonalnie wypowiada je za pomocą zamiany tekstu na mowę.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Użyj syntezy mowy, aby wypowiedzieć afirmację |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Pobiera losowe potwierdzenie z API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Pobiera losowe potwierdzenie i wypowiada je za pomocą zamiany tekstu na mowę.

## Parameter Details

### `-Speak`

> Użyj syntezy mowy, aby wypowiedzieć afirmację

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-WikipediaSummary.md)
