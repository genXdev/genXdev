# Set-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Set-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
