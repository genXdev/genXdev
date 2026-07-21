# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode`

## Synopsis

> पसंदीदा IDE (विज़ुअल स्टूडियो कोड या विज़ुअल स्टूडियो) में एक स्रोत फ़ाइल खोलता है।

## Description

यह फ़ंक्शन एक निर्दिष्ट स्रोत फ़ाइल को विज़ुअल स्टूडियो कोड या विज़ुअल स्टूडियो में खोलता है। यह सीधे एक विशिष्ट पंक्ति संख्या पर नेविगेट कर सकता है और वैकल्पिक रूप से फ़ाइल खोलने के बाद IDE को कीबोर्ड इनपुट भेज सकता है। फ़ंक्शन वर्तमान होस्ट प्रक्रिया, चल रहे एप्लिकेशन या उपयोगकर्ता चयन के आधार पर यह निर्धारित करने का प्रयास करेगा कि किस IDE का उपयोग करना है।

## Syntax

```powershell
Open-SourceFileInIde -Path <String> [[-LineNo] <Int32>] [[-KeysToSend] <String[]>] [-Code] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | खोलने के लिए स्रोत फ़ाइल का पथ |
| `-LineNo` | Int32 | — | — | 1 | `0` | वह पंक्ति संख्या जिस पर नेविगेट करना है |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | एप्लिकेशन को भेजने के लिए कीबोर्ड इनपुट की सरणी |
| `-Code` | SwitchParameter | — | — | Named | — | फ़ाइल खोलने के लिए IDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | विज़ुअल स्टूडियो में खोलें |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | नियंत्रण वर्णों और संशोधकों से बचें |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | लक्ष्य विंडो पर कीबोर्ड फोकस रखें |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Enter के बजाय Shift+Enter का उपयोग करें |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | विभिन्न इनपुट स्ट्रिंग्स के बीच मिलीसेकंड में विलंब |

## Examples

### Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code

```powershell
Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code
```

### editcode "C:\Projects\MyScript.ps1" 25

```powershell
editcode "C:\Projects\MyScript.ps1" 25
```

## Parameter Details

### `-Path <String>`

> खोलने के लिए स्रोत फ़ाइल का पथ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LineNo <Int32>`

> वह पंक्ति संख्या जिस पर नेविगेट करना है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> एप्लिकेशन को भेजने के लिए कीबोर्ड इनपुट की सरणी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `keys` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> फ़ाइल खोलने के लिए IDE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VisualStudio`

> विज़ुअल स्टूडियो में खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> नियंत्रण वर्णों और संशोधकों से बचें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> लक्ष्य विंडो पर कीबोर्ड फोकस रखें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Enter के बजाय Shift+Enter का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> विभिन्न इनपुट स्ट्रिंग्स के बीच मिलीसेकंड में विलंब

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
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
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-Refactor.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/VSCode.md)
