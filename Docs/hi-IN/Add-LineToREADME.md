# Add-LineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> निर्दिष्ट अनुभाग में README.md मार्कडाउन फ़ाइल में एक पंक्ति जोड़ता है।

## Description

README.md फ़ाइल ढूंढता है और उसमें निर्दिष्ट अनुभाग में एक नई पंक्ति जोड़कर संशोधित करता है।
यदि अनुभाग मौजूद नहीं है तो उसे बना सकता है। पंक्तियों को कोड ब्लॉक के रूप में प्रारूपित करने और संशोधित अनुभाग प्रदर्शित करने का समर्थन करता है।
पहले वर्तमान निर्देशिका में खोजेगा, फिर README स्थान खोजने के लिए निर्देशिकाओं में ऊपर जाएगा।
यदि नहीं मिलता है, तो PowerShell प्रोफ़ाइल निर्देशिका में README का उपयोग करेगा।

## Syntax

```powershell
Add-LineToREADME -Section <String> [-Ascending] [-Code] [-Done] [-First <Int32>] [-Line <String>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | Named | `''` | रीडमी में जोड़ने के लिए पंक्ति |
| `-Section` | String | ✅ | — | 0 | — | पंक्ति जोड़ने का अनुभाग |
| `-Code` | SwitchParameter | — | — | Named | — | संशोधन के बाद विज़ुअल स्टूडियो कोड में खोलें |
| `-Show` | SwitchParameter | — | — | Named | — | संशोधित अनुभाग दिखाएं |
| `-Done` | SwitchParameter | — | — | Named | — | आइटम को पूर्ण के रूप में चिह्नित करें |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | पावरशेल प्रोफ़ाइल निर्देशिका में README का उपयोग करें |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive निर्देशिका में README का उपयोग करें |
| `-Priority` | Int32 | — | — | Named | `1` | सॉर्टिंग के लिए प्राथमिकता (अधिक = पहले दिखाया गया, डिफ़ॉल्ट 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | प्राथमिकता के बजाय दिनांक (yyyyMMdd उपसर्ग) के अनुसार पंक्तियों को क्रमबद्ध करें |
| `-Ascending` | SwitchParameter | — | — | Named | — | सॉर्ट क्रम को उलट दें (अवरोही के बजाय आरोही) |
| `-First` | Int32 | — | — | Named | `0` | सीमा - आउटपुट को पहली N पंक्तियों तक सीमित करें |

## Examples

### Add-LineToREADME -Line "New feature" -Section "## Features"

```powershell
Add-LineToREADME -Line "New feature" -Section "## Features"
```

### Add-LineToREADME "High prio item" "## Issues" -Priority 5

```powershell
Add-LineToREADME "High prio item" "## Issues" -Priority 5
```

## Parameter Details

### `-Line <String>`

> रीडमी में जोड़ने के लिए पंक्ति

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Section <String>`

> पंक्ति जोड़ने का अनुभाग

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> संशोधन के बाद विज़ुअल स्टूडियो कोड में खोलें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Show`

> संशोधित अनुभाग दिखाएं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Done`

> आइटम को पूर्ण के रूप में चिह्नित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseHomeREADME`

> पावरशेल प्रोफ़ाइल निर्देशिका में README का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseOneDriveREADME`

> OneDrive निर्देशिका में README का उपयोग करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Priority <Int32>`

> सॉर्टिंग के लिए प्राथमिकता (अधिक = पहले दिखाया गया, डिफ़ॉल्ट 1)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SortByDate`

> प्राथमिकता के बजाय दिनांक (yyyyMMdd उपसर्ग) के अनुसार पंक्तियों को क्रमबद्ध करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Ascending`

> सॉर्ट क्रम को उलट दें (अवरोही के बजाय आरोही)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-First <Int32>`

> सीमा - आउटपुट को पहली N पंक्तियों तक सीमित करें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Add-IssueLineToREADME.md)
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
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/VSCode.md)
