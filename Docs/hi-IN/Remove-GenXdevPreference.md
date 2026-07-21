# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference`

## Synopsis

> GenXdev प्राथमिकताओं के भंडार से एक प्राथमिकता मान हटाता है।

## Description

* स्थानीय स्टोर से एक पसंदीदा मान हटाता है और वैकल्पिक रूप से डिफ़ॉल्ट स्टोर से भी हटाता है।
* दो पैरामीटर सेट प्रदान करता है - एक केवल स्थानीय हटाने के लिए और दूसरा स्थानीय और डिफ़ॉल्ट दोनों स्टोर से हटाने के लिए।
* डिफ़ॉल्ट स्टोर को संशोधित करते समय उचित तुल्यकालन सुनिश्चित करता है।

## Syntax

```powershell
Remove-GenXdevPreference -Name <String> [-ClearSession] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | हटाने के लिए प्राथमिकता का नाम |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | डिफ़ॉल्ट से वरीयता भी हटाने के लिए स्विच करें |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | डेटा प्राथमिकताओं जैसे भाषा, डेटाबेस पथ आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | पुनर्प्राप्त करने से पहले सत्र सेटिंग (ग्लोबल वेरिएबल) साफ़ करें |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | डेटा प्राथमिकताओं जैसे भाषा, डेटाबेस पथ आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

केवल स्थानीय स्टोर से "थीम" वरीयता हटाता है।

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

स्थानीय और डिफ़ॉल्ट दोनों स्टोरों से "थीम" प्राथमिकता को हटाता है।

## Parameter Details

### `-Name <String>`

> हटाने के लिए प्राथमिकता का नाम

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveDefault`

> डिफ़ॉल्ट से वरीयता भी हटाने के लिए स्विच करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-PreferencesDatabasePath <String>`

> प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreferencesDatabasePath.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevPreferencesDatabasePath.md)
