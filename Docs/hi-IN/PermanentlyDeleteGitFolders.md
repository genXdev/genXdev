# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Git रिपॉजिटरी की सभी शाखाओं से निर्दिष्ट फ़ोल्डरों को स्थायी रूप से हटा देता है।

## Description

एक Git रिपॉजिटरी को साफ करता है, पूरे कमिट इतिहास से सभी शाखाओं पर निर्दिष्ट फ़ोल्डरों को हटाकर। यह रिपॉजिटरी को क्लोन करके, git filter-branch का उपयोग करके फ़ोल्डरों को हटाकर, और परिवर्तनों को वापस फोर्स पुश करके किया जाता है। यह ऑपरेशन विनाशकारी है और स्थायी रूप से Git इतिहास को फिर से लिखता है।

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | साफ करने के लिए Git रिपॉजिटरी का URI |
| `-Folders` | String[] | ✅ | — | 1 | — | स्थायी रूप से हटाने के लिए फ़ोल्डर पथों की सरणी |
| `-tempPath` | String | — | — | Named | `"~\convert.tmp\"` | The `-tempPath` parameter. |

## Examples

### PermanentlyDeleteGitFolders `     -RepoUri "https://github.com/user/repo.git" `     -Folders "bin", "obj"

```powershell
PermanentlyDeleteGitFolders `
    -RepoUri "https://github.com/user/repo.git" `
    -Folders "bin", "obj"
```

## Parameter Details

### `-RepoUri <String>`

> साफ करने के लिए Git रिपॉजिटरी का URI

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Folders <String[]>`

> स्थायी रूप से हटाने के लिए फ़ोल्डर पथों की सरणी

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-tempPath <String>`

> The `-tempPath` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"~\convert.tmp\"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String[]`

## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-GitChangedFiles.md)
- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-GitCommit.md)
