# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> अगले सिस्टम बूट के दौरान फ़ाइलों या निर्देशिकाओं को हटाने के लिए चिह्नित करता है।

## Description

* अगले बूट पर फ़ाइलों को हटाने के लिए चिह्नित करने के लिए Windows API का उपयोग करता है।
* बंद फ़ाइलों को संभालता है, पहले उन्हें अस्थायी नामों में बदलने का प्रयास करके और फ़ाइल सिस्टम अखंडता बनाए रखने के लिए सभी चालों को ट्रैक करता है।
* यदि नाम बदलना विफल होता है, तो -MarkInPlace पैरामीटर का उपयोग उनके मूल स्थान पर फ़ाइलों को चिह्नित करने के लिए किया जा सकता है।

## Syntax

```powershell
Remove-OnReboot -Path <String[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | हटाने के लिए चिह्नित करने हेतु फ़ाइलों/निर्देशिकाओं का पथ |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | फ़ाइलों को नाम बदले बिना हटाने के लिए चिह्नित करता है |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

एक लॉक की गई फ़ाइल को अगले सिस्टम बूट के दौरान हटाने के लिए चिह्नित करता है।

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

कई फ़ाइलों को हटाने के लिए चिह्नित करता है, उन फ़ाइलों के लिए MarkInPlace का उपयोग करता है जिनका नाम बदला नहीं जा सकता।

## Parameter Details

### `-Path <String[]>`

> हटाने के लिए चिह्नित करने हेतु फ़ाइलों/निर्देशिकाओं का पथ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkInPlace`

> फ़ाइलों को नाम बदले बिना हटाने के लिए चिह्नित करता है

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-ItemWithFallback.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-TextFileAtomic.md)
