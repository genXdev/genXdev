# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> GenXdev.Data कार्यों में उपयोग के लिए वरीयता डेटा फ़ाइलों के लिए कॉन्फ़िगर किए गए डेटाबेस पथ को प्राप्त करता है।

## Description

* GenXdev.Data मॉड्यूल द्वारा विभिन्न प्राथमिकता भंडारण और डेटा संचालन के लिए उपयोग किए जाने वाले वैश्विक डेटाबेस पथ को प्राप्त करता है।
* पहले वैश्विक चरों की जाँच करता है (जब तक SkipSession निर्दिष्ट न हो), फिर स्थायी प्राथमिकताओं पर वापस जाता है, और अंत में सिस्टम डिफ़ॉल्ट का उपयोग करता है।

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | वैकल्पिक डेटाबेस पथ ओवरराइड |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | डेटा प्राथमिकताओं जैसे भाषा, डेटाबेस पथ आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | पुनर्प्राप्त करने से पहले सत्र सेटिंग (ग्लोबल वेरिएबल) साफ़ करें |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | डेटा प्राथमिकताओं जैसे भाषा, डेटाबेस पथ आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

ग्लोबल वेरिएबल्स या प्राथमिकताओं से डेटाबेस पथ प्राप्त करता है।

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

सत्र चर को छोड़ता है और लगातार प्राथमिकताओं का उपयोग करता है।

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

पथ प्राप्त करने से पहले सत्र सेटिंग साफ़ करता है।

## Parameter Details

### `-PreferencesDatabasePath <String>`

> वैकल्पिक डेटाबेस पथ ओवरराइड

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> डेटा प्राथमिकताओं जैसे भाषा, डेटाबेस पथ आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> पुनर्प्राप्त करने से पहले सत्र सेटिंग (ग्लोबल वेरिएबल) साफ़ करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> डेटा प्राथमिकताओं जैसे भाषा, डेटाबेस पथ आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreferenceNames.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevPreferencesDatabasePath.md)
