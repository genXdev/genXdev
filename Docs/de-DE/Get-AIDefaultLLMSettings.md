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
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Der Typ der LLM-Abfrage, um Einstellungen zu erhalten |
| `-Model` | String | — | — | Named | — | Filter configurations by model identifier or pattern |
| `-ApiEndpoint` | String | — | — | Named | — | Konfigurationen nach API-Endpunkt-URL filtern |
| `-ApiKey` | String | — | — | Named | — | Filter configurations by API key |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Sitzungseinstellungen überspringen und nur aus Präferenzen oder Standardwerten beziehen |

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
