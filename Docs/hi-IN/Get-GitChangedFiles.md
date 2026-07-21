# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> गिट रिपॉजिटरी में बदली गई फ़ाइलों की सूची प्राप्त करें।

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | पथ स्ट्रिंग के बजाय FileInfo ऑब्जेक्ट (Get-ChildItem की तरह) लौटाता है। |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

सापेक्ष पथ लौटाता है जैसे ".\Modules\GenXdev.AI\3.26.2026\README.md"।

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

प्रत्येक बदली गई फ़ाइल के लिए FileInfo ऑब्जेक्ट लौटाता है।

## Parameter Details

### `-PassThru`

> पथ स्ट्रिंग के बजाय FileInfo ऑब्जेक्ट (Get-ChildItem की तरह) लौटाता है।

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

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/PermanentlyDeleteGitFolders.md)
