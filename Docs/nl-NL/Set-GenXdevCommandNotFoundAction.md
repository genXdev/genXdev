# Set-GenXdevCommandNotFoundAction

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Stelt aangepaste afhandeling van niet-gevonden opdrachten in met optionele AI-ondersteuning.

## Description

Configureert PowerShell om onbekende opdrachten af te handelen door naar mappen te navigeren of AI te gebruiken om de bedoeling van de gebruiker te interpreteren. De handler probeert eerst een bestaande handler voor niet-gevonden opdrachten, controleert vervolgens of de opdracht een geldig pad is voor navigatie. AI-oplossing is alleen ingeschakeld wanneer de schakeloptie -UseAIResolve expliciet is opgegeven.

## Syntax

```powershell
Set-GenXdevCommandNotFoundAction [[-LLMQueryType] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-NoPrompt] [-UseAIResolve] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'Coding'` | Het type LLM-query |
| `-Model` | String | — | — | 1 | — | De modelidentificatie of het patroon dat moet worden gebruikt voor AI-bewerkingen |
| `-ApiEndpoint` | String | — | — | 2 | — | De API-eindpunt-URL voor AI-bewerkingen |
| `-ApiKey` | String | — | — | 3 | — | De API-sleutel voor geverifieerde AI-operaties |
| `-NoSupportForJsonSchema` | String | — | — | 4 | — | Geeft aan dat LLM geen ondersteuning heeft voor JSON-schema's |
| `-UseAIResolve` | SwitchParameter | — | — | Named | — | Schakel AI-gestuurde oplossing van onbekende opdrachten in. |
| `-NoPrompt` | SwitchParameter | — | — | Named | — | Sla de intentieprompt over en gebruik de opdrachtnaam rechtstreeks als AI-query (vereist -UseAIResolve). |

## Examples

### Set-GenXdevCommandNotFoundAction -UseAIResolve

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve
```

Schakelt AI-oplossing in met interactieve prompts voor onbekende opdrachten.

### Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt
```

Schakelt AI-resolutie in waarbij de onbekende opdracht rechtstreeks naar de AI wordt gestuurd zonder de gebruiker te vragen wat ze bedoelden.

## Parameter Details

### `-LLMQueryType <String>`

> Het type LLM-query

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

> De modelidentificatie of het patroon dat moet worden gebruikt voor AI-bewerkingen

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

> De API-eindpunt-URL voor AI-bewerkingen

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

> De API-sleutel voor geverifieerde AI-operaties

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

> Geeft aan dat LLM geen ondersteuning heeft voor JSON-schema's

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

> Schakel AI-gestuurde oplossing van onbekende opdrachten in.

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

> Sla de intentieprompt over en gebruik de opdrachtnaam rechtstreeks als AI-query (vereist -UseAIResolve).

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Set-AILLMSettings.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Test-DeepLinkImageFile.md)
