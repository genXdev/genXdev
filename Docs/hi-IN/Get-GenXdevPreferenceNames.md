# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> सत्र भंडारण और डेटाबेस स्टोर से सभी प्राथमिकता नाम प्राप्त करता है।

## Description

* वैश्विक चर (ग्लोबल वेरिएबल) और स्थानीय एवं डिफ़ॉल्ट प्राथमिकता स्टोर से कुंजियों को मिलाकर प्राथमिकता नामों की एक अद्वितीय सूची प्राप्त करता है।
* यह नियंत्रित करने के लिए कि किन स्रोतों से क्वेरी की जाए, सत्र प्रबंधन मापदंडों का सम्मान करता है।

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | डेटा प्राथमिकताओं जैसे भाषा, डेटाबेस पथ आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | पुनर्प्राप्त करने से पहले सत्र सेटिंग (ग्लोबल वेरिएबल) साफ़ करें |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | डेटा प्राथमिकताओं जैसे भाषा, डेटाबेस पथ आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

निर्दिष्ट डेटाबेस पथ का उपयोग करके सत्र संग्रहण और दोनों स्टोर से अद्वितीय प्राथमिकता नामों की एक सॉर्ट की गई सरणी लौटाता है।

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

सत्र संग्रह से केवल प्राथमिकता नाम लौटाता है।

### Example 3

```powershell
getPreferenceNames -SkipSession
```

डेटाबेस स्टोर से केवल प्राथमिकता नाम लौटाता है।

## Parameter Details

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
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreference.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevPreferencesDatabasePath.md)
