# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt

## Synopsis

> Retorna um texto de afirmação aleatório da API affirmations.dev.

## Description

* Recupera uma afirmação aleatória da API affirmations.dev e
  opcionalmente a fala usando conversão de texto em fala.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | You are capable of achieving great things. Believe in yourself and take one step forward each day. |

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

Recupera uma afirmação aleatória e a reproduz usando conversão de texto em fala.

## Related Links

- [Get-NextAffirmation on GitHub](https://github.com/genXdev/genXdev)
