# Get-AIDefaultLLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Gets all available default LLM settings configurations for AI operations in
GenXdev.AI.

## Description

Retrieves the complete set of default Large Language Model (LLM) settings
configured for AI operations. Results can be filtered by query type, model
identifier, API endpoint, or API key. Supports both session-based and
persistent preference-based retrieval, with options to clear session state
or bypass it entirely to read directly from stored preferences.

## Syntax

```powershell
Get-AIDefaultLLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | The type of LLM query to get settings for |
| `-Model` | String | — | — | Named | — | Filter configurations by model identifier or pattern |
| `-ApiEndpoint` | String | — | — | Named | — | Filter configurations by API endpoint URL |
| `-ApiKey` | String | — | — | Named | — | Filter configurations by API key |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Skip session settings and get from preferences or defaults only |

## Examples

### Get-AIDefaultLLMSettings -LLMQueryType "Coding"

```powershell
Get-AIDefaultLLMSettings -LLMQueryType "Coding"
```

Gets all available default configurations for Coding query type.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-AIDefaultLLMSettings on GitHub](https://github.com/genXdev/genXdev)
