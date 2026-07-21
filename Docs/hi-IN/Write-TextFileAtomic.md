# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> भ्रष्टाचार को रोकने के लिए एक फ़ाइल में परमाणु रूप से टेक्स्ट लिखता है।

## Description

* परमाणु लेखन: प्रक्रिया बाधित होने पर लक्ष्य फ़ाइल को कभी दूषित अवस्था में न छोड़ने के लिए एक अस्थायी फ़ाइल + नाम बदलने की रणनीति का उपयोग करता है।
* पुनर्प्रयास तर्क: MaxRetries बार तक लेखन का पुनर्प्रयास करता है, प्रयासों के बीच RetryDelayMs मिलीसेकंड का विलंब।
* एन्कोडिंग समर्थन: आउटपुट एन्कोडिंग को नियंत्रित करने के लिए System.Text.Encoding पैरामीटर स्वीकार करता है। डिफ़ॉल्ट UTF-8 है।
* डीबाउंस समर्थन: जब DebounceMs > 0 हो, तो एक ही फ़ाइल में तेज़ी से लगातार लेखन को संयोजित किया जाता है — केवल अंतिम पेलोड तब लिखा जाता है जब फ़ाइल को DebounceMs मिलीसेकंड से छुआ न गया हो।
* निर्देशिका निर्माण: यदि मौजूद नहीं हैं तो स्वचालित रूप से पैरेंट निर्देशिकाएँ बनाता है।

## Syntax

```powershell
Write-TextFileAtomic -FilePath <String> [[-Data] <String>] [-DebounceMs <Int32>] [-Encoding <Text.Encoding>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | फ़ाइल में लिखने का पथ। |
| `-Data` | String | — | — | 1 | — | फ़ाइल में लिखने के लिए टेक्स्ट सामग्री। |
| `-MaxRetries` | Int32 | — | — | Named | `0` | परमाणु लेखन ऑपरेशन के लिए पुनः प्रयास प्रयासों की अधिकतम संख्या। डिफ़ॉल्ट 4 है। |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | पुनः प्रयास प्रयासों के बीच मिलीसेकंड में विलंब। डिफ़ॉल्ट 200 है। |
| `-Encoding` | Text.Encoding | — | — | Named | — | फ़ाइल लिखते समय उपयोग करने के लिए टेक्स्ट एन्कोडिंग। डिफ़ॉल्ट UTF-8 है। |
| `-DebounceMs` | Int32 | — | — | Named | `0` | यदि 0 से अधिक है, तो इस फ़ाइल में लेखन में विलंब करता है। डिफ़ॉल्ट 0 (अक्षम) है। |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

UTF-8 एन्कोडिंग का उपयोग करके परमाणु रूप से config.txt में एक स्ट्रिंग लिखता है।

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

तेजी से 50 पंक्तियाँ पाइप करता है; 2 सेकंड की शांति अवधि के बाद केवल अंतिम पंक्ति बनी रहती है।

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

एक स्ट्रिंग को ASCII एन्कोडिंग का उपयोग करके परमाणु रूप से data.csv में लिखता है।

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

एक पृष्ठभूमि कार्य हर 100ms पर टाइमस्टैम्प लिखता है लेकिन डिबाउंस उन्हें एकत्र करता है — प्रति सेकंड केवल एक लेखन वास्तव में डिस्क पर पहुँचता है।

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
### `-Data <String>`

> फ़ाइल में लिखने के लिए टेक्स्ट सामग्री।

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
### `-Encoding <Text.Encoding>`

> फ़ाइल लिखते समय उपयोग करने के लिए टेक्स्ट एन्कोडिंग। डिफ़ॉल्ट UTF-8 है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-JsonFileAtomic.md)
