# Get-VectorSimilarity

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 두 벡터 간의 코사인 유사도를 계산합니다.

## Description

두 개의 수치 벡터(배열)를 입력받아 코사인 유사도를 계산합니다. 결과는 벡터 간의 연관성을 나타내며, 0은 완전히 다름을, 1은 동일함을 의미합니다.

## Syntax

```powershell
Get-VectorSimilarity -Vector1 <Double[]> -Vector2 <Double[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Vector1` | Double[] | ✅ | — | 0 | — | 첫 번째 숫자 배열 |
| `-Vector2` | Double[] | ✅ | — | 1 | — | 숫자의 두 번째 벡터 배열 |

## Examples

### Example 1

```powershell
$v1 = @(0.12, -0.45, 0.89)
$v2 = @(0.15, -0.40, 0.92)
Get-VectorSimilarity -Vector1 $v1 -Vector2 $v2
```

약 0.998을 반환하여 높은 유사성을 나타냅니다.

## Parameter Details

### `-Vector1 <Double[]>`

> 첫 번째 숫자 배열

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

> 숫자의 두 번째 벡터 배열

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-TextTranslation.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-DeepLinkImageFile.md)
