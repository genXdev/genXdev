# Set-GenXdevCommandNotFoundAction

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Konfigurerar anpassad hantering för kommandon som inte hittas med valfritt AI-stöd.

## Description

Konfigurerar PowerShell att hantera okända kommandon genom att antingen navigera till kataloger eller använda AI för att tolka användarens avsikt. Hanteraren försöker först med en befintlig hanterare för kommandon som inte hittas, kontrollerar sedan om kommandot är en giltig sökväg för navigering. AI-upplösning är endast aktiverad när växeln -UseAIResolve uttryckligen anges.

## Syntax

```powershell
Set-GenXdevCommandNotFoundAction [[-LLMQueryType] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-NoPrompt] [-UseAIResolve] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'Coding'` | Typen av LLM-fråga |
| `-Model` | String | — | — | 1 | — | Modellidentifieraren eller mönstret som ska användas för AI-operationer |
| `-ApiEndpoint` | String | — | — | 2 | — | API-ändpunkts-URL:en för AI-operationer |
| `-ApiKey` | String | — | — | 3 | — | API-nyckel för autentiserade AI-operationer |
| `-NoSupportForJsonSchema` | String | — | — | 4 | — | Anger att LLM inte har stöd för JSON-scheman |
| `-UseAIResolve` | SwitchParameter | — | — | Named | — | Aktivera AI-driven lösning av okända kommandon. |
| `-NoPrompt` | SwitchParameter | — | — | Named | — | Hoppa över avsiktsprompten och använd kommandonamnet direkt som AI-fråga (kräver -UseAIResolve). |

## Examples

### Set-GenXdevCommandNotFoundAction -UseAIResolve

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve
```

Aktiverar AI-lösning med interaktiv uppmaning för okända kommandon.

### Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt
```

Aktiverar AI-upplösning där det okända kommandot skickas direkt till AI utan att fråga användaren vad de menade.

## Parameter Details

### `-LLMQueryType <String>`

> Typen av LLM-fråga

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Modellidentifieraren eller mönstret som ska användas för AI-operationer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> API-ändpunkts-URL:en för AI-operationer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> API-nyckel för autentiserade AI-operationer

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Anger att LLM inte har stöd för JSON-scheman

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseAIResolve`

> Aktivera AI-driven lösning av okända kommandon.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoPrompt`

> Hoppa över avsiktsprompten och använd kommandonamnet direkt som AI-fråga (kräver -UseAIResolve).

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-AILLMSettings.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-DeepLinkImageFile.md)
