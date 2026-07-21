# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> दो वैक्टरों के बीच कोसाइन समानता की गणना करता है।

## Description

दो संख्यात्मक वैक्टर (सरणियाँ) को इनपुट के रूप में लेता है और उनकी कोसाइन समानता की गणना करता है। परिणाम बताता है कि वैक्टर कितने निकट से संबंधित हैं, जहाँ 0 का अर्थ पूरी तरह से असमान और 1 का अर्थ समान है।

## Syntax

```powershell
Get-VectorSimilarity -Vector1 <Double[]> -Vector2 <Double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | प्रथम वेक्टर संख्याओं की सरणी |
| `-Vector2` | Double[] | ✅ | — | 1 | — | संख्याओं का दूसरा वेक्टर सरणी |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

लगभग 0.998 लौटाता है, जो उच्च समानता का संकेत देता है।

## Parameter Details

### `-Vector1 <Double[]>`

> प्रथम वेक्टर संख्याओं की सरणी

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Vector2 <Double[]>`

> संख्याओं का दूसरा वेक्टर सरणी

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-TextTranslation.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-DeepLinkImageFile.md)
