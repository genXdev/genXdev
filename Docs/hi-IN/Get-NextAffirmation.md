# Get-NextAffirmation

> **Module:** GenXdev.Queries.Text | **Type:** Cmdlet | **Aliases:** `WhatAboutIt`

## Synopsis

> affirmations.dev API से एक यादृच्छिक पुष्टि पाठ लौटाता है।

## Description

* affirmations.dev API से एक यादृच्छिक पुष्टि प्राप्त करता है और
  वैकल्पिक रूप से टेक्स्ट-टू-स्पीच का उपयोग करके इसे बोलता है।

## Syntax

```powershell
Get-NextAffirmation [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Speak` | SwitchParameter | — | — | Named | `False` | पुष्टि बोलने के लिए टेक्स्ट-टू-स्पीच का उपयोग करें |

## Examples

### Example 1

```powershell
Get-NextAffirmation
```

एपीआई से एक यादृच्छिक पुष्टि प्राप्त करता है।

### Example 2

```powershell
Get-NextAffirmation -Speak
```

एक यादृच्छिक प्रतिज्ञान प्राप्त करता है और टेक्स्ट-टू-स्पीच का उपयोग करके इसे बोलता है।

## Parameter Details

### `-Speak`

> पुष्टि बोलने के लिए टेक्स्ट-टू-स्पीच का उपयोग करें

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

- [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-WikipediaSummary.md)
