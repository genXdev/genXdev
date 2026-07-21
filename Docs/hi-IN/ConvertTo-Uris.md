# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> किसी भी मान्य URI के लिए स्ट्रिंग्स को पार्स करता है।

## Description

* इनपुट टेक्स्ट से सभी वैध URI निकालता है, मानक और कस्टम URI स्कीम जैसे http:, https:, ftp:, magnet:, about:, आदि का समर्थन करता है।
* प्रत्येक वैध URI के लिए Uri ऑब्जेक्ट लौटाता है।

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | पाठ इनपुट जिसमें URI हो सकते हैं |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

प्रदान किए गए पाठ स्ट्रिंग में URI के लिए पार्स करता है और Uri ऑब्जेक्ट लौटाता है।

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

URI पार्सिंग के लिए cmdlet को एक टेक्स्ट स्ट्रिंग पाइप करता है।

## Parameter Details

### `-Text <String[]>`

> पाठ इनपुट जिसमें URI हो सकते हैं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-AllPossibleQueries.md)
