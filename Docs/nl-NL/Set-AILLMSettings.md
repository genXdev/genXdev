# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Stelt de LLM-instellingen in voor AI-bewerkingen in GenXdev.AI.

## Description

Deze functie slaat de LLM (Large Language Model) instellingen op die door de GenXdev.AI module worden gebruikt voor verschillende AI operaties. Instellingen kunnen persistent worden opgeslagen in voorkeuren (standaard), alleen in de huidige sessie (met -SessionOnly), of worden gewist uit de sessie (met -ClearSession). De functie valideert dat er ten minste één instellingsparameter is opgegeven tenzij sessie-instellingen worden gewist.

## Syntax

```powershell
Set-AILLMSettings -LLMQueryType <String> [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [-ClearSession] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | ✅ | — | 0 | — | Het type LLM-query |
| `-Model` | String | — | — | 1 | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | 7 | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | 8 | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | No, the endpoint does not support json_schema response format. |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Of het eindpunt geen functionaliteit voor het uploaden van afbeeldingen ondersteunt |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Of het endpoint geen ondersteuning biedt voor het aanroepen van tools |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Instellingen alleen in permanente voorkeuren opslaan zonder de sessie te beïnvloeden |

## Examples

### Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"

```powershell
Set-AILLMSettings -LLMQueryType "Coding" -Model "*Qwen*14B*"
```

Stelt de LLM-instellingen voor het querytype 'Coding' persistent in in de voorkeuren.

### Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly

```powershell
Set-AILLMSettings -LLMQueryType "SimpleIntelligence" -Model "maziyarpanahi/llama-3-groq-8b-tool-use" -SessionOnly
```

Stelt de LLM-instellingen voor SimpleIntelligence alleen in voor de huidige
sessie.

### Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession

```powershell
Set-AILLMSettings -LLMQueryType "Pictures" -ClearSession
```

Wist de sessie-LLM-instellingen voor het querytype Afbeeldingen zonder blijvende voorkeuren te beïnvloeden.

### Set-AILLMSettings "Coding" "*Qwen*14B*"

```powershell
Set-AILLMSettings "Coding" "*Qwen*14B*"
```

Stelt de LLM-instellingen voor het Code-querytype in met behulp van positionele parameters.

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
