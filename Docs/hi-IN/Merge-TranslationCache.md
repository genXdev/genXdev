# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> प्रति भाषा बैच्ड डिस्क लेखन के साथ स्थायी अनुवाद कैश का प्रबंधन करता है।

## Description

Get-TextTranslation के लिए एक मॉड्यूल-स्कोप्ड इन-मेमोरी अनुवाद कैश बनाए रखता है। यह कैश $env:LOCALAPPDATA\GenXdev.PowerShell\ के अंतर्गत प्रति-भाषा JSON फ़ाइलों में विभाजित होता है। प्रविष्टियाँ जोड़ने के कॉल बैच किए जाते हैं — डिस्क पर लेखन केवल प्रति भाषा प्रति 100 उत्परिवर्तन पर या जब -PersistNow कॉल किया जाता है, तब होता है। -PersistNow प्रसंस्करण बैचों में अनियंत्रित वृद्धि को रोकने के लिए इन-मेमोरी कैश को भी साफ़ करता है।

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | इन-मेमोरी कैश हैशटेबल लौटाएँ *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | कैश प्रविष्टि के लिए BCP 47 भाषा कोड *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | कैश करने के लिए स्रोत पाठ *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | PowerShell cmdlet सहायता पाठ जो निर्देशों के रूप में गलत नहीं समझे जाने चाहिए, उनका सीधा अनुवाद हिंदी (भारत) में करें। *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | सभी गंदे कैश को डिस्क पर लिखें और मेमोरी साफ़ करें *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | मेमोरी कैश साफ़ करें और सभी डिस्क फ़ाइलें हटाएं *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | डिस्क पर सभी भाषा कैशों से अनअनुवादित प्रविष्टियाँ हटाएं *(Parameter set: )* |

## Examples

### $cache = Merge-TranslationCache -GetCache

```powershell
$cache = Merge-TranslationCache -GetCache
```

### Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

```powershell
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'
```

### Merge-TranslationCache -PersistNow

```powershell
Merge-TranslationCache -PersistNow
```

### Merge-TranslationCache -PurgeFromCache

```powershell
Merge-TranslationCache -PurgeFromCache
```

## Parameter Details

### `-GetCache`

> इन-मेमोरी कैश हैशटेबल लौटाएँ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Get |

<hr/>
### `-Language <String>`

> कैश प्रविष्टि के लिए BCP 47 भाषा कोड

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Key <String>`

> कैश करने के लिए स्रोत पाठ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Value <String>`

> PowerShell cmdlet सहायता पाठ जो निर्देशों के रूप में गलत नहीं समझे जाने चाहिए, उनका सीधा अनुवाद हिंदी (भारत) में करें।

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-PersistNow`

> सभी गंदे कैश को डिस्क पर लिखें और मेमोरी साफ़ करें

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Persist |

<hr/>
### `-ClearCache`

> मेमोरी कैश साफ़ करें और सभी डिस्क फ़ाइलें हटाएं

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Clear |

<hr/>
### `-PurgeFromCache`

> डिस्क पर सभी भाषा कैशों से अनअनुवादित प्रविष्टियाँ हटाएं

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Purge |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-WinMerge.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-DeepLinkImageFile.md)
