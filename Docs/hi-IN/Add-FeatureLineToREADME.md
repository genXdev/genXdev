# Add-FeatureLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `feature`

## Synopsis

> README फ़ाइल में टाइमस्टैम्प के साथ एक फीचर लाइन जोड़ता है।

## Description

निर्दिष्ट README फ़ाइल में वर्तमान दिनांक yyyyMMdd प्रारूप में एक फीचर लाइन जोड़ता है। लाइन को कोड के रूप में स्वरूपित किया जा सकता है और वैकल्पिक रूप से प्रदर्शित किया जा सकता है।

## Syntax

```powershell
Add-FeatureLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | जोड़ने के लिए फीचर विवरण पाठ |
| `-Code` | SwitchParameter | — | — | Named | — | `=====` |
| `-Show` | SwitchParameter | — | — | Named | — | लाइन जोड़ने के बाद README प्रदर्शित करें |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | होम डायरेक्टरी में README का उपयोग करें |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | OneDrive निर्देशिका में README का उपयोग करें |
| `-Priority` | Int32 | — | — | Named | `1` | सॉर्टिंग के लिए प्राथमिकता (अधिक = पहले दिखाया गया, डिफ़ॉल्ट 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | प्राथमिकता के बजाय दिनांक (yyyyMMdd उपसर्ग) के अनुसार पंक्तियों को क्रमबद्ध करें |
| `-Ascending` | SwitchParameter | — | — | Named | — | सॉर्ट क्रम को उलट दें (अवरोही के बजाय आरोही) |
| `-First` | Int32 | — | — | Named | `0` | सीमा - आउटपुट को पहली N पंक्तियों तक सीमित करें |

## Examples

### Add-FeatureLineToREADME -Line "Added new Git feature"

```powershell
Add-FeatureLineToREADME -Line "Added new Git feature"
```

### feature "Added new Git feature" -Code -Show

```powershell
feature "Added new Git feature" -Code -Show
```

## Parameter Details

### `-Line <String>`

> जोड़ने के लिए फीचर विवरण पाठ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> `=====`

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

> लाइन जोड़ने के बाद README प्रदर्शित करें

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

> होम डायरेक्टरी में README का उपयोग करें

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
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/VSCode.md)
