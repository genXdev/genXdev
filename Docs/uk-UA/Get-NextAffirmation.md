# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Повертає випадковий текст підтвердження з API affirmations.dev.

## Description

* Отримує випадкове ствердження з API affirmations.dev і за бажанням озвучує його за допомогою текстового в мовлення перетворювача.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Використайте текст-в-мовлення, щоб промовити афірмацію |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Отримує випадкове підтвердження з API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Отримує випадкове ствердження та озвучує його за допомогою синтезу мовлення.

## Parameter Details

### `-Speak`

> Використайте текст-в-мовлення, щоб промовити афірмацію

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WikipediaSummary.md)
