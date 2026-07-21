# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> सभी परिवर्तनों के साथ एक नया git कमिट बनाता और पुश करता है।

## Description

वर्तमान git रिपॉजिटरी में सभी बदलावों को स्टेज करता है, निर्दिष्ट शीर्षक के साथ एक कमिट बनाता है, और बदलावों को रिमोट ओरिजिन पर पुश करता है। यदि आवश्यक हो तो स्वचालित रूप से अपस्ट्रीम ट्रैकिंग सेट करता है।

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | उपयोग करने के लिए कमिट संदेश शीर्षक |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

"नई प्रमाणीकरण सुविधा जोड़ी गई" नामक एक कमिट बनाएं।

### Example 2

```powershell
commit "Hotfix for login issue"
```

'commit' उपनाम का उपयोग करके डिफ़ॉल्ट संदेश के साथ एक कमिट बनाएं।

## Parameter Details

### `-Title <String>`

> उपयोग करने के लिए कमिट संदेश शीर्षक

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/PermanentlyDeleteGitFolders.md)
