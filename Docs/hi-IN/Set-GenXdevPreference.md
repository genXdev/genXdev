# Set-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreference`

## Synopsis

> GenXdev प्राथमिकता भंडार में एक प्राथमिकता मान सेट करता है।

## Description

* GenXdev स्थानीय संग्रह में प्राथमिकताओं का प्रबंधन करता है।
* नई प्राथमिकताएँ सेट कर सकता है, मौजूदा को अद्यतन कर सकता है, या null/खाली मान प्रदान करने पर उन्हें हटा सकता है।
* प्राथमिकताएँ "स्थानीय" सिंक्रनाइज़ेशन के साथ संग्रहीत की जाती हैं।

## Syntax

```powershell
Set-GenXdevPreference -Name <String> [[-Value] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | सेट करने के लिए प्राथमिकता का नाम |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | प्राथमिकता के लिए संग्रहीत करने का मान |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | डेटा प्राथमिकताओं जैसे भाषा, डेटाबेस पथ आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग करें |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | पुनर्प्राप्त करने से पहले सत्र सेटिंग (ग्लोबल वेरिएबल) साफ़ करें |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटा फ़ाइलों के लिए डेटाबेस पथ |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | डेटा प्राथमिकताओं जैसे भाषा, डेटाबेस पथ आदि के लिए सत्र में संग्रहीत वैकल्पिक सेटिंग्स का उपयोग न करें |

## Examples

### Example 1

```powershell
Set-GenXdevPreference -Name "Theme" -Value "Dark"
```

स्थानीय स्टोर में 'थीम' वरीयता को 'डार्क' पर सेट करता है।

### Example 2

```powershell
setPreference Theme Light
```

थीम प्राथमिकता सेट करने के लिए उपनाम और स्थितीय पैरामीटर का उपयोग करता है।

## Parameter Details

### `-Name <String>`

> सेट करने के लिए प्राथमिकता का नाम

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> प्राथमिकता के लिए संग्रहीत करने का मान

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
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
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevPreferencesDatabasePath.md)
