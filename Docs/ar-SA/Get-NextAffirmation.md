# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> يُرجع نص تأكيد عشوائيًا من واجهة برمجة التطبيقات affirmations.dev.

## Description

* يسترد تأكيدًا عشوائيًا من API affirmations.dev ويقوم بنطقه اختياريًا باستخدام تحويل النص إلى كلام.

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | استخدم تحويل النص إلى كلام لقراءة التأكيد |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

استرداد تأكيد عشوائي من واجهة برمجة التطبيقات.

### Example 2

```powershell
Get-NextAffirmation -Speak
```

يسترد تأكيدًا عشوائيًا ويتحدث به باستخدام تحويل النص إلى كلام.

## Parameter Details

### `-Speak`

> استخدم تحويل النص إلى كلام لقراءة التأكيد

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-WikipediaSummary.md)
