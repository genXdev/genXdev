# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> फ़ाइलों और निर्देशिकाओं को फ़ाइलसिस्टम लिंक और संदर्भों को संरक्षित करते हुए स्थानांतरित करता है।

## Description

* लिंक ट्रैकिंग सक्षम के साथ फ़ाइलों और निर्देशिकाओं को स्थानांतरित करने के लिए Windows MoveFileEx API का उपयोग करता है, जिससे फ़ाइल सिस्टम संदर्भ बने रहते हैं।
* यदि स्रोत पथ Git नियंत्रण में है, तो यह Git में नाम बदलने को ट्रैक करने के लिए git mv का उपयोग करने का प्रयास करता है।
* यदि Git उपलब्ध नहीं है या git mv विफल हो जाता है, तो MoveFileEx पर वापस आ जाता है।

## Syntax

```powershell
Move-ItemWithTracking -Path <String> -Destination <String> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | स्थानांतरित करने के लिए फ़ाइल/निर्देशिका का स्रोत पथ |
| `-Destination` | String | ✅ | — | 1 | — | स्थानांतरित करने के लिए गंतव्य पथ |
| `-Force` | SwitchParameter | — | — | Named | `False` | यदि मौजूद है तो गंतव्य को अधिलेखित करें |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

एक फ़ाइल को फ़ाइल सिस्टम लिंक और Git ट्रैकिंग को संरक्षित करते हुए स्थानांतरित करता है।

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

एक निर्देशिका को स्थानांतरित करता है, यदि गंतव्य मौजूद है तो उसे अधिलेखित करता है।

## Parameter Details

### `-Path <String>`

> स्थानांतरित करने के लिए फ़ाइल/निर्देशिका का स्रोत पथ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `FullName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Destination <String>`

> स्थानांतरित करने के लिए गंतव्य पथ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> यदि मौजूद है तो गंतव्य को अधिलेखित करें

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
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-OnReboot.md)
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
