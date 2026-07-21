# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> GenXDev.Data संचालनों में उपयोग की जाने वाली प्राथमिकताओं के लिए डेटाबेस पथ सेट करता है।

## Description

* GenXdev.Data मॉड्यूल द्वारा विभिन्न प्राथमिकता भंडारण और डेटा संचालन के लिए उपयोग किए जाने वाले वैश्विक डेटाबेस पथ को कॉन्फ़िगर करता है।
* सेटिंग्स वर्तमान सत्र में (ग्लोबल वेरिएबल का उपयोग करके) संग्रहीत की जाती हैं और सत्र से (-ClearSession का उपयोग करके) साफ़ की जा सकती हैं।

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | एक डेटाबेस पथ जहां पसंदीदा डेटा फ़ाइलें स्थित हैं |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | डेटा प्राथमिकताओं जैसे भाषा, डेटाबेस पथ आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | जब निर्दिष्ट किया जाता है, तो सेटिंग केवल वर्तमान सत्र (ग्लोबल वेरिएबल) में संग्रहीत करता है, बिना प्राथमिकताओं में स्थायी रूप से सहेजे। |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | निर्दिष्ट होने पर, स्थायी प्राथमिकताओं को प्रभावित किए बिना केवल सत्र सेटिंग (ग्लोबल वेरिएबल) को साफ़ करता है |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

वर्तमान सत्र में डेटाबेस पथ सेट करता है (ग्लोबल वेरिएबल)।

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

स्थितीय पैरामीटर का उपयोग करके डेटाबेस पथ सेट करता है।

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

वर्तमान सत्र के लिए ही पथ सेट करता है, बिना स्थायी रूप से।

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

डेटाबेस पथ के लिए वैश्विक चर को साफ़ करता है।

## Parameter Details

### `-PreferencesDatabasePath <String>`

> एक डेटाबेस पथ जहां पसंदीदा डेटा फ़ाइलें स्थित हैं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
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
### `-SessionOnly`

> जब निर्दिष्ट किया जाता है, तो सेटिंग केवल वर्तमान सत्र (ग्लोबल वेरिएबल) में संग्रहीत करता है, बिना प्राथमिकताओं में स्थायी रूप से सहेजे।

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

> निर्दिष्ट होने पर, स्थायी प्राथमिकताओं को प्रभावित किए बिना केवल सत्र सेटिंग (ग्लोबल वेरिएबल) को साफ़ करता है

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

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevPreference.md)
