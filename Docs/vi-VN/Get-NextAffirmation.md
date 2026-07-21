# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> Trả về một văn bản khẳng định ngẫu nhiên từ API affirmations.dev.

## Description

* Truy xuất một lời khẳng định ngẫu nhiên từ API affirmations.dev và tùy chọn đọc to bằng giọng nói tổng hợp.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | Sử dụng chuyển văn bản thành giọng nói để đọc lời khẳng định |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

Truy xuất một lời khẳng định ngẫu nhiên từ API.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

Lấy một lời khẳng định ngẫu nhiên và đọc to nó bằng giọng nói tổng hợp (text-to-speech).

## Parameter Details

### `-Speak`

> Sử dụng chuyển văn bản thành giọng nói để đọc lời khẳng định

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-WikipediaSummary.md)
