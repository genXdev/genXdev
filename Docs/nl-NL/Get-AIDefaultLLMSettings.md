# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-AIDefaultLLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Het type LLM-query om instellingen voor te verkrijgen |
| `-Model` | String | — | — | Named | — | Filter configuraties op model-identificatie of patroon |
| `-ApiEndpoint` | String | — | — | Named | — | Filter configuraties op API-eindpunt-URL |
| `-ApiKey` | String | — | — | Named | — | Filter configuraties op API-sleutel |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sla sessie-instellingen over en haal alleen uit voorkeuren of standaardwaarden |

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
