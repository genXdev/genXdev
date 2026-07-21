# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Mengembalikan teks afirmasi acak dari API affirmations.dev.

## Description

* Mengambil afirmasi acak dari API affirmations.dev dan
  secara opsional mengucapkannya menggunakan text-to-speech.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Gunakan teks-ke-ucapan untuk mengucapkan afirmasi |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Mengambil afirmasi acak dari API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Mengambil afirmasi acak dan mengucapkannya menggunakan sintesis suara.

## Parameter Details

### `-Speak`

> Gunakan teks-ke-ucapan untuk mengucapkan afirmasi

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WikipediaSummary.md)
