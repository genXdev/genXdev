---
external help file: GenXdev-help.xml
Module Name: GenXdev
online version: https://docs.github.com/en/rest/search
schema: 2.0.0
---

# Update-Refactor

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### Name (Default)
```
Update-Refactor [[-Name] <String[]>] [[-FilesToAdd] <FileInfo[]>] [[-FilesToRemove] <FileInfo[]>]
 [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>]
 [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-PromptKey <String>]
 [-Prompt <String>] [-SelectionScript <String>] [-SelectionPrompt <String>] [-LLMQueryType <String>]
 [-Model <String>] [-Temperature <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-TimeoutSeconds <Int32>]
 [-Priority <Int32>] [-ExposedCmdLets <ExposedCmdletDefinition[]>] [-KeysToSend <String[]>]
 [-PreferencesDatabasePath <String>] [-CleanUpDeletedFiles] [-AskBeforeLLMSelection] [-PerformAutoSelections]
 [-PerformAISelections] [-RetryFailedLLMSelections] [-Clear] [-ClearLog] [-Reset] [-ResetLMSelections]
 [-MarkAllCompleted] [-RedoLast] [-ReprocessModifiedFiles] [-Code] [-VisualStudio] [-Speak] [-SelectByFreeRam]
 [-SelectByFreeGpuRam] [-SessionOnly] [-ClearSession] [-SkipSession] [-ProgressAction <ActionPreference>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Refactor
```
Update-Refactor [[-Refactor] <RefactorDefinition[]>] [[-FilesToAdd] <FileInfo[]>]
 [[-FilesToRemove] <FileInfo[]>] [-SelectByModifiedDateFrom <DateTime>] [-SelectByModifiedDateTo <DateTime>]
 [-SelectByCreationDateFrom <DateTime>] [-SelectByCreationDateTo <DateTime>] [-PromptKey <String>]
 [-Prompt <String>] [-SelectionScript <String>] [-SelectionPrompt <String>] [-LLMQueryType <String>]
 [-Model <String>] [-Temperature <Double>] [-ApiEndpoint <String>] [-ApiKey <String>] [-TimeoutSeconds <Int32>]
 [-Priority <Int32>] [-ExposedCmdLets <ExposedCmdletDefinition[]>] [-KeysToSend <String[]>]
 [-PreferencesDatabasePath <String>] [-CleanUpDeletedFiles] [-AskBeforeLLMSelection] [-PerformAutoSelections]
 [-PerformAISelections] [-RetryFailedLLMSelections] [-Clear] [-ClearLog] [-Reset] [-ResetLMSelections]
 [-MarkAllCompleted] [-RedoLast] [-ReprocessModifiedFiles] [-Code] [-VisualStudio] [-Speak] [-SelectByFreeRam]
 [-SelectByFreeGpuRam] [-SessionOnly] [-ClearSession] [-SkipSession] [-ProgressAction <ActionPreference>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ApiEndpoint
The API endpoint URL for AI operations

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApiKey
The API key for authenticated AI operations

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AskBeforeLLMSelection
Switch to suppress user interaction

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CleanUpDeletedFiles
Clean up deleted files

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Clear
Clear all files from the refactor set

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClearLog
Clear the log of the refactor set

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClearSession
Clear alternative settings stored in session for AI preferences

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Code
The ide to open the file in

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: c

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExposedCmdLets
Array of PowerShell command definitions to use as tools during LLM selection

```yaml
Type: ExposedCmdletDefinition[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilesToAdd
Filenames to add

```yaml
Type: FileInfo[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilesToRemove
Filenames to remove

```yaml
Type: FileInfo[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeysToSend
The keys to invoke as key strokes after opening the file

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: keys

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LLMQueryType
The type of LLM query

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: SimpleIntelligence, Knowledge, Pictures, TextTranslation, Coding, ToolUse

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MarkAllCompleted
Mark all files as refactored

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Model
The model identifier or pattern to use for AI operations

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the refactor, accepts wildcards

```yaml
Type: String[]
Parameter Sets: Name
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: True
```

### -PerformAISelections
Switch to process all files in the refactor set

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: PerformAllLLMSelections

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PerformAutoSelections
Switch to enable LLM-based file selection processing

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PreferencesDatabasePath
Database path for preference data files

```yaml
Type: String
Parameter Sets: (All)
Aliases: DatabasePath

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Priority
Priority for this refactor set

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Prompt
The prompt key indicates which prompt script to use

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PromptKey
The prompt key indicates which prompt script to use

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RedoLast
Redo the last refactor

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Refactor
The refactor set to update

```yaml
Type: RefactorDefinition[]
Parameter Sets: Refactor
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReprocessModifiedFiles
Automatically reprocess files modified since last update

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: AutoAddModifiedFiles

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Reset
Start from the beginning of the refactor set

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResetLMSelections
Restart all LLMSelections

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RetryFailedLLMSelections
Switch to retry failed LLM selections

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectByCreationDateFrom
Select files by creation date from

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectByCreationDateTo
Select files by creation date to

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectByFreeGpuRam
Select configuration by available GPU RAM

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectByFreeRam
Select configuration by available system RAM

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectByModifiedDateFrom
Select files by modified date from

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectByModifiedDateTo
Select files by modified date to

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectionPrompt
If provided, will invoke LLM to do the selection based on the content of the script

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectionScript
Powershell script for function to select items to refactor

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionOnly
Use alternative settings stored in session for AI preferences

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipSession
Store settings only in persistent preferences without affecting session

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: FromPreferences

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Speak
Speak out the details of next refactor

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Temperature
Temperature for response randomness (0.0-1.0)

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeoutSeconds
The timeout in seconds for AI operations

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VisualStudio
Open in Visual Studio

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: vs

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String[]

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
