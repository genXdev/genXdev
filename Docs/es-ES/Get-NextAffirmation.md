# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Devuelve un texto de afirmación aleatorio de la API affirmations.dev.

## Description

* Recupera una afirmación aleatoria de la API affirmations.dev y
  opcionalmente la reproduce mediante texto a voz.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Usa la conversión de texto a voz para decir la afirmación |

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

## Parameter Details

### `-Speak`

> Usa la conversión de texto a voz para decir la afirmación

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-WikipediaSummary.md)
