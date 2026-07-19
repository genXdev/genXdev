# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt

## Synopsis

> Gibt einen zufälligen Affirmationstext von der affirmations.dev API zurück.

## Description

* Ruft eine zufällige Bestätigung von der affirmations.dev-API ab und
  spricht sie optional mittels Text-zu-Sprache aus.

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

Ruft eine zufällige Bestätigung von der API ab.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Ruft eine zufällige Bestätigung ab und spricht sie mittels Text-to-Speech aus.

## Related Links

- [Get-NextAffirmation on GitHub](https://github.com/genXdev/genXdev)
