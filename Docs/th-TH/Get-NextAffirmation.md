# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> ส่งคืนข้อความให้กำลังใจแบบสุ่มจาก API affirmations.dev

## Description

* ดึงการยืนยันเชิงบวกแบบสุ่มจาก API ของ affirmations.dev และ
  สามารถพูดออกมาด้วยข้อความเป็นเสียงพูดได้

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | ใช้ข้อความเป็นเสียงเพื่อพูดคำยืนยัน |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

ดึงคำยืนยันเชิงบวกแบบสุ่มจาก API

### Example 2

```powershell
Get-NextAffirmation -Speak
```

ดึงคำยืนยันแบบสุ่มมาและพูดออกเสียงด้วยการแปลงข้อความเป็นเสียง

## Parameter Details

### `-Speak`

> ใช้ข้อความเป็นเสียงเพื่อพูดคำยืนยัน

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-WikipediaSummary.md)
