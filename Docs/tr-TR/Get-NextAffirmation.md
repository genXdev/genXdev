# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> affirmations.dev API'sinden rastgele bir onaylama metni döndürür.

## Description

* affirmations.dev API'sinden rastgele bir olumlama alır ve
  isteğe bağlı olarak metin-konuşma kullanarak söyler.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Olumlamayı konuşturmak için metin-konuşturma kullan |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

API'den rastgele bir olumlama alır.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Rastgele bir olumlama alır ve metin-konuşma kullanarak seslendirir.

## Parameter Details

### `-Speak`

> Olumlamayı konuşturmak için metin-konuşturma kullan

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WikipediaSummary.md)
