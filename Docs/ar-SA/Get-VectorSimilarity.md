# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> تحسب التشابه التجميعي بين متجهين.

## Description

يأخذ متجهين عدديين (مصفوفات) كمدخلات ويحسب التشابه التجميعي بينهما. تشير النتيجة إلى مدى الارتباط بين المتجهين، حيث يعني 0 عدم التشابه التام و1 التطابق التام.

## Syntax

```powershell
Get-VectorSimilarity -Vector1 <Double[]> -Vector2 <Double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | المصفوفة الأولى من الأرقام |
| `-Vector2` | Double[] | ✅ | — | 1 | — | المصفوفة الثانية من الأرقام |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

يُرجع حوالي 0.998، مما يشير إلى تشابه عالٍ.

## Parameter Details

### `-Vector1 <Double[]>`

> المصفوفة الأولى من الأرقام

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

> المصفوفة الثانية من الأرقام

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-TextTranslation.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Test-DeepLinkImageFile.md)
