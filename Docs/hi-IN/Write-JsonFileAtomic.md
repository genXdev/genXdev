# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> भ्रष्टाचार को रोकने के लिए एक वस्तु को परमाणु रूप से JSON फ़ाइल में लिखता है।

## Description

* परमाणु लेखन: लक्ष्य फ़ाइल को कभी भी दूषित अवस्था में न छोड़ने के लिए एक अस्थायी फ़ाइल + नाम बदलने की रणनीति का उपयोग करता है, यदि प्रक्रिया बाधित होती है।
* पुनर्प्रयास तर्क: प्रयासों के बीच RetryDelayMs मिलीसेकंड की देरी के साथ MaxRetries बार तक लेखन का पुनर्प्रयास करता है।
* ऑब्जेक्ट समर्थन: केवल हैशटेबल नहीं, बल्कि किसी भी ऑब्जेक्ट को स्वीकार करता है। System.Text.Json के माध्यम से क्रमबद्ध करता है और जटिल .NET प्रकारों के लिए ConvertTo-Json का सहारा लेता है जो मूल रूप से क्रमबद्ध नहीं किए जा सकते।
* डिबाउंस समर्थन: जब DebounceMs > 0 होता है, तो एक ही फ़ाइल में तेज़ी से लगातार लेखन को एकत्रित किया जाता है - केवल अंतिम पेलोड लिखा जाता है जब फ़ाइल को DebounceMs मिलीसेकंड के लिए स्पर्श नहीं किया गया हो।
* निर्देशिका निर्माण: स्वचालित रूप से पैरेंट निर्देशिकाएँ बनाता है यदि वे मौजूद नहीं हैं।

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | फ़ाइल में लिखने का पथ। |
| `-Data` | Object | — | — | 1 | — | वह वस्तु जिसे JSON के रूप में क्रमबद्ध किया जाना है और फ़ाइल में लिखा जाना है। |
| `-MaxRetries` | Int32 | — | — | Named | `0` | परमाणु लेखन ऑपरेशन के लिए पुनः प्रयास प्रयासों की अधिकतम संख्या। डिफ़ॉल्ट 4 है। |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | पुनः प्रयास प्रयासों के बीच मिलीसेकंड में विलंब। डिफ़ॉल्ट 200 है। |
| `-DebounceMs` | Int32 | — | — | Named | `0` | यदि 0 से अधिक है, तो इस फ़ाइल में लेखन में विलंब करता है। डिफ़ॉल्ट 0 (अक्षम) है। |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | JSON क्रमांकन के लिए अधिकतम गहराई। डिफ़ॉल्ट 30 है। |
| `-Compress` | SwitchParameter | — | — | Named | `False` | Compress JSON (बिना इंडेंटेशन/व्हाइटस्पेस) |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | Compress JSON (बिना इंडेंटेशन/व्हाइटस्पेस) |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | एक वैकल्पिक क्रमांकन विकल्प प्रदान करता है जो सभी गणनाओं को उनके स्ट्रिंग प्रतिनिधित्व में परिवर्तित करता है। |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

एक हैशटेबल को इंडेंटेड JSON के रूप में परमाणु रूप से config.json में लिखता है।

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

प्रक्रिया वस्तुओं को परमाणु रूप से कंप्रेस JSON के रूप में लिखता है।

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
### `-Data <Object>`

> वह वस्तु जिसे JSON के रूप में क्रमबद्ध किया जाना है और फ़ाइल में लिखा जाना है।

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
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> JSON क्रमांकन के लिए अधिकतम गहराई। डिफ़ॉल्ट 30 है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Compress`

> Compress JSON (बिना इंडेंटेशन/व्हाइटस्पेस)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsArray`

> Compress JSON (बिना इंडेंटेशन/व्हाइटस्पेस)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnumsAsStrings`

> एक वैकल्पिक क्रमांकन विकल्प प्रदान करता है जो सभी गणनाओं को उनके स्ट्रिंग प्रतिनिधित्व में परिवर्तित करता है।

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
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Write-TextFileAtomic.md)
