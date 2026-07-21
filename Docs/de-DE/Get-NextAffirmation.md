# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Gibt einen zufälligen Bestätigungstext von der affirmations.dev-API zurück.

## Description

* Ruft eine zufällige Bestätigung von der affirmations.dev API ab und
  spricht sie optional mithilfe von Text-zu-Sprache aus.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Verwenden Sie Text-to-Speech, um die Affirmation zu sprechen |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Ruft eine zufällige Bestätigung von der API ab.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Ruft eine zufällige Bestätigung ab und spricht sie mittels Text-zu-Sprache aus.

## Parameter Details

### `-Speak`

> Verwenden Sie Text-to-Speech, um die Affirmation zu sprechen

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WikipediaSummary.md)
