# Get-RefactorReport

> **Module:** GenXdev.Coding | **Type:** Cmdlet | **Aliases:** `refactorreport`

## Synopsis

> रीफैक्टरिंग संचालनों और उनकी स्थिति की एक विस्तृत रिपोर्ट उत्पन्न करता है।

## Description

रीफैक्टरिंग ऑपरेशनों की प्रगति का विश्लेषण और रिपोर्ट करता है, उनकी वर्तमान स्थिति, पूर्णता स्थिति और प्रभावित फ़ंक्शनों की जांच करके। आउटपुट या तो संरचित हैशटेबल प्रारूप में या मानव-पठनीय संरेखित टेक्स्ट कॉलम में प्रदान करता है। रिपोर्ट में रीफैक्टर नाम, प्रॉम्प्ट कुंजी, प्राथमिकता, स्थिति, फ़ंक्शन गणना और पूर्णता प्रतिशत शामिल होता है।

## Syntax

```powershell
Get-RefactorReport [[-Name] <String[]>] [-AsText] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | रीफ़ैक्टर का नाम, वाइल्डकार्ड स्वीकार करता है 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | प्राथमिकता डेटाबेस फ़ाइल का पथ निर्दिष्ट करता है। |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | यदि सेट किया गया है, तो रिफैक्टर डेटा के लिए केवल सत्र कैश का उपयोग करें। |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | यदि सेट किया गया, तो चलाने से पहले सत्र कैश साफ़ करें। |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | यदि सेट किया जाए, तो सत्र कैश लोड करना छोड़ें। |
| `-AsText` | SwitchParameter | — | — | Named | `False` | हैशटेबल के बजाय टेक्स्ट प्रारूप में आउटपुट रिपोर्ट |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

"DatabaseRefactor" से मेल खाने वाले रिफैक्टरों के लिए एक पाठ रिपोर्ट उत्पन्न करता है।

### Example 2

```powershell
refactorreport "*"
```

उपनाम का उपयोग करके सभी रीफैक्टर्स के लिए हैशटेबल रिपोर्ट तैयार करता है।

## Parameter Details

### `-Name <String[]>`

> रीफ़ैक्टर का नाम, वाइल्डकार्ड स्वीकार करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PreferencesDatabasePath <String>`

> प्राथमिकता डेटाबेस फ़ाइल का पथ निर्दिष्ट करता है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> यदि सेट किया गया है, तो रिफैक्टर डेटा के लिए केवल सत्र कैश का उपयोग करें।

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

> यदि सेट किया गया, तो चलाने से पहले सत्र कैश साफ़ करें।

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

> यदि सेट किया जाए, तो सत्र कैश लोड करना छोड़ें।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsText`

> हैशटेबल के बजाय टेक्स्ट प्रारूप में आउटपुट रिपोर्ट

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Refactor.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/VSCode.md)
