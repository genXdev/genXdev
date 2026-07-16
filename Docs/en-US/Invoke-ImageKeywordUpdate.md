# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | The directory paths containing images to process |
| `-Recurse` | SwitchParameter | — | — | Named | — | Process images in specified directory and all subdirectories |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Will retry previously failed image keyword updates |
| `-Language` | String | — | — | Named | — | The language for generated descriptions and keywords |
| `-FacesDirectory` | String | — | — | Named | — | The directory containing face images organized by person folders. If not specified, uses the configured faces directory preference. |
| `-Instructions` | String | — | — | 2 | — | System instructions for the model |
| `-ResponseFormat` | String | — | — | Named | `$null` | A JSON schema for the requested output format |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Image detail level |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Include model's thoughts in output |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |
| `-Functions` | String[] | — | — | Named | — | Specifies the functions to use for the AI operation. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Specifies the exposed cmdlets for the AI operation. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Specifies tool function names that do not require confirmation. |
| `-NoContext` | SwitchParameter | — | — | Named | — | If specified, disables context usage. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Maximum callback length for tool calls. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru to return structured objects instead of outputting to console |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detects changes in the faces directory and re-registers faces if needed |

## Related Links

- [Invoke-ImageKeywordUpdate on GitHub](https://github.com/genXdev/genXdev)
