# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep`

## Synopsis

> किसी भी दिए गए फ़ाइल संदर्भ को पूर्ण पथ नाम में विस्तारित करता है।

## Description

दिए गए किसी भी फ़ाइल संदर्भ को उपयोगकर्ता के वर्तमान निर्देशिका के सापेक्ष पूर्ण पथनाम में विस्तारित करता है। वैकल्पिक रूप से यह सुनिश्चित कर सकता है कि निर्देशिकाएँ या फ़ाइलें मौजूद हैं।

## Syntax

```powershell
Expand-Path -FilePath <String> [-CreateDirectory] [-CreateFile] [-DeleteExistingFile] [-DirectoryMustExist] [-FileMustExist] [-ForceDrive <Char>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | विस्तार करने का पथ |
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | यदि मौजूद नहीं है तो निर्देशिका बनाएगा |
| `-CreateFile` | SwitchParameter | — | — | Named | — | यदि फ़ाइल मौजूद नहीं है तो एक खाली फ़ाइल बनाएँगा |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | यदि फ़ाइल पहले से मौजूद है तो उसे हटा देगा |
| `-ForceDrive` | Char | — | — | Named | `'*'` | एक विशिष्ट ड्राइव के उपयोग को बाध्य करेगा |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | यदि फ़ाइल मौजूद नहीं है तो त्रुटि उत्पन्न करेगा |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | यदि निर्देशिका मौजूद नहीं है तो त्रुटि उत्पन्न करेगा |

## Examples

### Expand-Path -FilePath ".\myfile.txt" -CreateFile

```powershell
Expand-Path -FilePath ".\myfile.txt" -CreateFile
```

### ep ~\documents\test.txt -CreateFile

```powershell
ep ~\documents\test.txt -CreateFile
```

## Parameter Details

### `-FilePath <String>`

> विस्तार करने का पथ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CreateDirectory`

> यदि मौजूद नहीं है तो निर्देशिका बनाएगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CreateFile`

> यदि फ़ाइल मौजूद नहीं है तो एक खाली फ़ाइल बनाएँगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DeleteExistingFile`

> यदि फ़ाइल पहले से मौजूद है तो उसे हटा देगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceDrive <Char>`

> एक विशिष्ट ड्राइव के उपयोग को बाध्य करेगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'*'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileMustExist`

> यदि फ़ाइल मौजूद नहीं है तो त्रुटि उत्पन्न करेगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DirectoryMustExist`

> यदि निर्देशिका मौजूद नहीं है तो त्रुटि उत्पन्न करेगा

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Copy-FilesToDateFolder.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Move-ItemWithTracking.md)
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
