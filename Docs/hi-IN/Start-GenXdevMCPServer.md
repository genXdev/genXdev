# Start-GenXdevMCPServer

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-GenXdevMCPServer [[-Port] <Int32>] [[-ExposedCmdLets] <GenXdev.Helpers.ExposedCmdletDefinition[]>] [[-NoConfirmationToolFunctionNames] <String[]>] [[-MaxOutputLength] <Int32>] [[-Token] <String>] [-StopExisting] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Port` | Int32 | — | — | 0 | `2175` | वह पोर्ट जिस पर MCP सर्वर सुनेगा (डिफ़ॉल्ट: 2175) |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | MCP उपकरणों के रूप में उजागर करने के लिए PowerShell कमांड परिभाषाओं की सरणी |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | कमांड नामों की सरणी जो उपयोगकर्ता पुष्टि के बिना निष्पादित कर सकते हैं |
| `-StopExisting` | SwitchParameter | — | — | Named | — | नया एमसीपी सर्वर शुरू करने से पहले निर्दिष्ट पोर्ट पर चल रहे किसी भी मौजूदा एमसीपी सर्वर को रोकें |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | टूल आउटपुट की अधिकतम लंबाई (अक्षरों में) जिसके बाद इसे छोटा किया जाता है (डिफ़ॉल्ट: 75000) |
| `-Token` | String | — | — | 4 | `$null` | MCP सर्वर से कनेक्ट होने के लिए क्लाइंट को प्रमाणीकरण टोकन आवश्यक है |

## Parameter Details

### `-Port <Int32>`

> वह पोर्ट जिस पर MCP सर्वर सुनेगा (डिफ़ॉल्ट: 2175)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `2175` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> MCP उपकरणों के रूप में उजागर करने के लिए PowerShell कमांड परिभाषाओं की सरणी

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> कमांड नामों की सरणी जो उपयोगकर्ता पुष्टि के बिना निष्पादित कर सकते हैं

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StopExisting`

> नया एमसीपी सर्वर शुरू करने से पहले निर्दिष्ट पोर्ट पर चल रहे किसी भी मौजूदा एमसीपी सर्वर को रोकें

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxOutputLength <Int32>`

> टूल आउटपुट की अधिकतम लंबाई (अक्षरों में) जिसके बाद इसे छोटा किया जाता है (डिफ़ॉल्ट: 75000)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `75000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Token <String>`

> MCP सर्वर से कनेक्ट होने के लिए क्लाइंट को प्रमाणीकरण टोकन आवश्यक है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Set-GenXdevCommandNotFoundAction.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Test-DeepLinkImageFile.md)
