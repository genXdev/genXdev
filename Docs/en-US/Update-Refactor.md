# Update-Refactor

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `updaterefactor

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Update-Refactor [[-Name] <String[]>] [<CommonParameters>]

Update-Refactor [[-Refactor] <GenXdev.Helpers.RefactorDefinition[]>] [<CommonParameters>]

Update-Refactor [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AskBeforeLLMSelection] [-CleanUpDeletedFiles] [-Clear] [-ClearLog] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-KeysToSend <String[]>] [-LLMQueryType <String>] [-MarkAllCompleted] [-Model <String>] [-PerformAISelections] [-PerformAutoSelections] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-Prompt <String>] [-PromptKey <String>] [-RedoLast] [-ReprocessModifiedFiles] [-Reset] [-ResetLMSelections] [-RetryFailedLLMSelections] [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>] [-SelectionPrompt <String>] [-SelectionScript <String>] [-SessionOnly] [-SkipSession] [-Speak] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | The name of the refactor, accepts wildcards *(Parameter set: )* 🌐 *Supports wildcards* |
| `-Refactor` | GenXdev.Helpers.RefactorDefinition[] | — | — | 1 | — | The refactor set to update *(Parameter set: )* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 2 | `@()` | Filenames to add |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 3 | `@()` | Filenames to remove |
| `-SelectByModifiedDateFrom` | DateTime | — | — | Named | — | Select files by modified date from |
| `-SelectByModifiedDateTo` | DateTime | — | — | Named | — | Select files by modified date to |
| `-SelectByCreationDateFrom` | DateTime | — | — | Named | — | Select files by creation date from |
| `-SelectByCreationDateTo` | DateTime | — | — | Named | — | Select files by creation date to |
| `-PromptKey` | String | — | — | Named | — | The prompt key indicates which prompt script to use |
| `-Prompt` | String | — | — | Named | `''` | The prompt key indicates which prompt script to use |
| `-SelectionScript` | String | — | — | Named | — | Powershell script for function to select items to refactor |
| `-SelectionPrompt` | String | — | — | Named | — | If provided, will invoke LLM to do the selection based on the content of the script |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | The type of LLM query |
| `-Model` | String | — | — | Named | — | The model identifier or pattern to use for AI operations |
| `-Temperature` | Double | — | — | Named | `-1` | Temperature for response randomness (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | The API endpoint URL for AI operations |
| `-ApiKey` | String | — | — | Named | — | The API key for authenticated AI operations |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | The timeout in seconds for AI operations |
| `-Priority` | Int32 | — | — | Named | — | Priority for this refactor set |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array of PowerShell command definitions to use as tools during LLM selection |
| `-KeysToSend` | String[] | — | — | Named | `@()` | The keys to invoke as key strokes after opening the file |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Clean up deleted files |
| `-AskBeforeLLMSelection` | SwitchParameter | — | — | Named | — | Switch to suppress user interaction |
| `-PerformAutoSelections` | SwitchParameter | — | — | Named | — | Switch to enable LLM-based file selection processing |
| `-PerformAISelections` | SwitchParameter | — | — | Named | — | Switch to process all files in the refactor set |
| `-RetryFailedLLMSelections` | SwitchParameter | — | — | Named | — | Switch to retry failed LLM selections |
| `-Clear` | SwitchParameter | — | — | Named | — | Clear all files from the refactor set |
| `-ClearLog` | SwitchParameter | — | — | Named | — | Clear the log of the refactor set |
| `-Reset` | SwitchParameter | — | — | Named | — | Start from the beginning of the refactor set |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Restart all LLMSelections |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Mark all files as refactored |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Redo the last refactor |
| `-ReprocessModifiedFiles` | SwitchParameter | — | — | Named | — | Automatically reprocess files modified since last update |
| `-Code` | SwitchParameter | — | — | Named | — | The ide to open the file in |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open in Visual Studio |
| `-Speak` | SwitchParameter | — | — | Named | — | Speak out the details of next refactor |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Select configuration by available system RAM |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Select configuration by available GPU RAM |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Store settings only in persistent preferences without affecting session |

## Related Links

- [Update-Refactor on GitHub](https://github.com/genXdev/genXdev)
