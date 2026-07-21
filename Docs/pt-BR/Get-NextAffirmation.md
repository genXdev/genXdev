# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Retorna um texto de afirmação aleatório da API affirmations.dev.

## Description

* Recupera uma afirmação aleatória da API affirmations.dev e, opcionalmente, a reproduz usando texto para fala.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Use texto para fala para falar a afirmação |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Recupera uma afirmação aleatória da API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Recupera uma afirmação aleatória e a reproduz usando texto para fala.

## Parameter Details

### `-Speak`

> Use texto para fala para falar a afirmação

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-WikipediaSummary.md)
