# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> भ्रष्टाचार को रोकने के लिए परमाणु रूप से फ़ाइल में बाइट्स लिखता है।

## Description

* परमाणु लेखन: लक्ष्य फ़ाइल को कभी भी दूषित स्थिति में न छोड़ने के लिए एक अस्थायी फ़ाइल + नाम बदलने की रणनीति का उपयोग करता है, यदि प्रक्रिया बाधित होती है।
* पुनः प्रयास तर्क: प्रयासों के बीच RetryDelayMs मिलीसेकंड की देरी के साथ लेखन को अधिकतम MaxRetries बार तक पुनः प्रयास करता है।
* डिबाउंस समर्थन: जब DebounceMs > 0 हो, तो एक ही फ़ाइल में तेज़ी से लगातार लेखन संयोजित हो जाते हैं — केवल अंतिम पेलोड तब लिखा जाता है जब फ़ाइल को DebounceMs मिलीसेकंड तक स्पर्श नहीं किया गया हो।
* निर्देशिका निर्माण: यदि मौजूद नहीं हैं तो स्वचालित रूप से मूल निर्देशिकाएँ बनाता है।

## Syntax

```powershell
Write-FileAtomic -FilePath <String> [[-Data] <Byte[]>] [-DebounceMs <Int32>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | फ़ाइल में लिखने का पथ। |
| `-Data` | Byte[] | — | — | 1 | — | फ़ाइल में लिखने के लिए बाइट सरणी। |
| `-MaxRetries` | Int32 | — | — | Named | `0` | परमाणु लेखन ऑपरेशन के लिए पुनः प्रयास प्रयासों की अधिकतम संख्या। डिफ़ॉल्ट 4 है। |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | पुनः प्रयास प्रयासों के बीच मिलीसेकंड में विलंब। डिफ़ॉल्ट 200 है। |
| `-DebounceMs` | Int32 | — | — | Named | `0` | यदि 0 से अधिक है, तो इस फ़ाइल में लेखन में विलंब करता है। डिफ़ॉल्ट 0 (अक्षम) है। |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

डिफ़ॉल्ट पुनर्प्रयास सेटिंग्स के साथ परमाणु रूप से data.bin में एक बाइट सरणी लिखता है।

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

त्वरित रूप से 100 बार लिखता है लेकिन केवल अंतिम पेलोड (100) 5 सेकंड की शांत अवधि के बाद डिस्क पर स्थायी रूप से सहेजा जाता है।

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

कस्टम रीट्राई के साथ लिखता है: प्रत्येक के बीच 500ms के साथ अधिकतम 10 प्रयास।

## Parameter Details

### `-FilePath <String>`

> फ़ाइल में लिखने का पथ।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <Byte[]>`

> फ़ाइल में लिखने के लिए बाइट सरणी।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> परमाणु लेखन ऑपरेशन के लिए पुनः प्रयास प्रयासों की अधिकतम संख्या। डिफ़ॉल्ट 4 है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> पुनः प्रयास प्रयासों के बीच मिलीसेकंड में विलंब। डिफ़ॉल्ट 200 है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> यदि 0 से अधिक है, तो इस फ़ाइल में लेखन में विलंब करता है। डिफ़ॉल्ट 0 (अक्षम) है।

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
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-RoboCopy.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-TextFileAtomic.md)
