# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Het type LLM-query om instellingen voor te verkrijgen |
| `-Model` | String | — | — | Named | — | Het modelidentificatiepatroon of de patroon die moet worden gebruikt voor AI-operaties |
| `-ApiEndpoint` | String | — | — | Named | — | De API-eindpunt-URL voor AI-operaties |
| `-ApiKey` | String | — | — | Named | — | De API-sleutel voor geauthenticeerde AI-bewerkingen |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | No, the endpoint does not support json_schema response format. |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Of het eindpunt geen functionaliteit voor het uploaden van afbeeldingen ondersteunt |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Of het endpoint geen ondersteuning biedt voor het aanroepen van tools |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sla sessie-instellingen over en haal alleen uit voorkeuren of standaardwaarden |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
