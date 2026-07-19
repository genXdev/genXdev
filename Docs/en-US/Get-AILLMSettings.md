# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Gets the LLM settings for AI operations in GenXdev.AI.

## Description

This function retrieves the LLM (Large Language Model) settings used by the
GenXdev.AI module for various AI operations. Settings are retrieved from
session variables, persistent preferences, or default settings JSON file, in
that order of precedence. The function supports automatic configuration
selection based on available system memory resources.

Memory selection strategy is determined automatically based on the Gpu and Cpu
parameters provided:
- If both Gpu and Cpu parameters are specified: Uses combined CPU + GPU memory
- If only Gpu parameter is specified: Prefers GPU memory (with system RAM fallback)
- If only Cpu parameter is specified: Uses system RAM only
- If neither parameter is specified: Uses combined CPU + GPU memory (default)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | The type of LLM query to get settings for |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support json_schema response format |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support image upload functionality |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Whether the endpoint does not support tool calling functionality |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Skip session settings and get from preferences or defaults only |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

Gets the LLM settings for SimpleIntelligence query type (default).

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Gets the LLM settings for Coding query type.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

Gets the LLM settings from preferences or defaults only, ignoring session
settings.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings on GitHub](https://github.com/genXdev/genXdev)
